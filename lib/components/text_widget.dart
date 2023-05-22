import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;

  const TextWidget(
    this.text, {
    super.key,
    this.weight = FontWeight.normal,
    this.size = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: size,
        fontFamily: 'Quicksand',
      ),
    );
  }
}
