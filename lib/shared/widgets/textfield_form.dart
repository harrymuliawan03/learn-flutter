import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    super.key,
    required this.controller,
    this.type,
    this.maxLength,
    this.prefix = false,
    required this.label,
  });

  final TextEditingController controller;
  final TextInputType? type;
  final int? maxLength;
  final bool prefix;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: type,
      maxLength: maxLength,
      decoration: InputDecoration(
        prefixText: prefix ? '\$ ' : null,
        label: Text(label),
      ),
    );
  }
}
