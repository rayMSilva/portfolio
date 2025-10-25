import 'package:flutter/material.dart';

class HeaderButtomModel {
  final int? id;
  final String? name;
  final Icon? icon;
  final VoidCallback? onPressed;
  HeaderButtomModel({required this.id, required this.onPressed, required this.name, required this.icon});
}
