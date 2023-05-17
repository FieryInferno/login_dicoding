import 'package:flutter/material.dart';
import '../input_widget.dart';

void main() => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainApp createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  String _type = 'password';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset('assets/long-logo-dicoding.png'),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                    ),
                    const InputWidget(
                      placeholder: 'Email',
                      margin: EdgeInsets.symmetric(vertical: 10),
                    ),
                    InputWidget(
                      placeholder: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() =>
                            _type = _type == 'password' ? 'text' : 'password'),
                        child: Icon(
                          Icons.remove_red_eye,
                          color:
                              _type == 'password' ? Colors.grey : Colors.blue,
                        ),
                      ),
                      type: _type,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: const ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(
                              Colors.black,
                            ),
                            textStyle: MaterialStatePropertyAll(
                              TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Lupa password?'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
