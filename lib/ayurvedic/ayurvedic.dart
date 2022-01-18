import 'package:flutter/material.dart';

class Ayurvedic extends StatefulWidget {
  const Ayurvedic({Key? key}) : super(key: key);

  @override
  _AyurvedicState createState() => _AyurvedicState();
}

class _AyurvedicState extends State<Ayurvedic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Ayurvedic'),
      ),
    );
  }
}
