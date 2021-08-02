import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final Color color;
  final bool isObscure;
  const InputField({
    required this.label,
    required this.color,
    required this.isObscure,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        fillColor: color,
        filled: true,
        labelText: label,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none),
      ),
    );
  }
}
