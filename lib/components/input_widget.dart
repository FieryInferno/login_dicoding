import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String placeholder;
  final EdgeInsetsGeometry? margin;
  final Widget? suffixIcon;
  final String type;

  const InputWidget({
    super.key,
    required this.placeholder,
    this.margin,
    this.suffixIcon,
    this.type = 'text',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        style: const TextStyle(fontSize: 20),
        obscureText: type == 'password',
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
