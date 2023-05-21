import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String text;

  const OutlinedButtonWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(
                Color(0xFF2d3e50),
              ),
              side: MaterialStatePropertyAll(
                  BorderSide(color: Color(0xFF2d3e50))),
            ),
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
