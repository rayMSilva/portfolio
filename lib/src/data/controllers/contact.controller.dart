import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_portfolio/src/widgets/dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController textController = TextEditingController();

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  void openURL(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showDialog(
        context: context,
        builder: (_) => const CustomDialog(
          content: "erro ao encontrar URL",
        ),
      );
    }
  }

  Future sendEmail(BuildContext context) async {
    isLoading.value = true;
    try {
      String serviceID = "service_67cjt6o";
      String templateID = "template_bam6m75";
      String userID = "9FS60fMl7u3P66i9q";
      String accessToken = "METpj26M4INzscFMNQe9P";

      if (await validarCampos()) {
        showDialog(
          context: context,
          builder: (_) {
            return CustomDialog(
              content: "os campos devem ser preenchidos!",
            );
          },
        );
        return;
      } else {
        String name = nameController.text;
        String email = emailController.text;
        String message = textController.text;

        final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

        final response = await http.post(
          url,
          headers: {
            'Content-Type': 'application/json',
          },
          body: json.encode({
            'service_id': serviceID,
            'template_id': templateID,
            'user_id': userID,
            'accessToken': accessToken,
            'template_params': {
              'user_name': name,
              'user_email': email,
              'user_subject': "Greetings Ray Michel",
              'user_message': message,
            },
          }),
        );
        if (response.statusCode == 200) {
          showDialog(
            context: context,
            builder: (_) {
              return CustomDialog(
                content: "e-mail enviado com sucesso",
              );
            },
          );
        } else {
          showDialog(
            context: context,
            builder: (_) => const CustomDialog(
              content: "falha ao enviar e-mail",
            ),
          );
        }
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (_) => const CustomDialog(
          content: "erro ao enviar e-mail",
        ),
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<bool> validarCampos() async {
    try {
      bool ret = false;
      if (nameController.text.isEmpty) ret = true;
      if (emailController.text.isEmpty) ret = true;
      if (textController.text.isEmpty) ret = true;
      return ret;
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    emailController.dispose();
    nameController.dispose();
    textController.dispose();
    isLoading.dispose();
  }
}
