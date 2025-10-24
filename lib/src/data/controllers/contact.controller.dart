import 'dart:convert' show json;
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class ContactController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController textController = TextEditingController();

  Future sendEmail() async {
    String serviceID = "service_67cjt6o";
    String templateID = "template_bam6m75";
    String userID = "9FS60fMl7u3P66i9q";
    String accessToken = "METpj26M4INzscFMNQe9P";
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
    print(response.body);
  }
}
