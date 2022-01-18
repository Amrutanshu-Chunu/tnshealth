import 'package:flutter/material.dart';
import 'package:tnshealth/screen/Login_Page.dart';

void main() {
  runApp(const Tnshealth());
}

class Tnshealth extends StatelessWidget {
  const Tnshealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login',
      home: LoginPage(),
    );
  }
}
