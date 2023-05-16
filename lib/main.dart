import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset(
            'assets/logo-dicoding.png',
            width: 25,
            height: 25,
            scale: 1.2,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
