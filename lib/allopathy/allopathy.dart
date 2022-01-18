import 'package:flutter/material.dart';

class Allopathy extends StatefulWidget {
  const Allopathy({Key? key}) : super(key: key);

  @override
  _AllopathyState createState() => _AllopathyState();
}

class _AllopathyState extends State<Allopathy> {
  final kTabBar = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Allopathy'),
      ),
    );
  }
}
