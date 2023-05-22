import 'package:flutter/material.dart';
import '../components/input_widget.dart';
import '../components/outlined_button_widget.dart';
import '../theme_app.dart';

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Center(
                    child: Image.asset('assets/long-logo-dicoding.png'),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          onTap: () => setState(() => _type =
                              _type == 'password' ? 'text' : 'password'),
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
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  ThemeApp().primaryColor,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text('Masuk'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: ThemeApp().primaryColor,
                                thickness: 1,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Text('atau'),
                            ),
                            Expanded(
                              child: Divider(
                                color: ThemeApp().primaryColor,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const OutlinedButtonWidget('Masuk dengan Google'),
                      const OutlinedButtonWidget('Masuk dengan Facebook'),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Belum punya akun? Ayo ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                            children: [
                              WidgetSpan(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'daftar',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: ThemeApp().primaryColor,
                        thickness: 1,
                      ),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Dengan melakukan login, Anda setuju dengan ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                            children: [
                              WidgetSpan(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'syarat & ketentuan Dicoding',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
