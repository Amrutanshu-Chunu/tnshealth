import 'package:flutter/material.dart';

class Homeopathy extends StatefulWidget {
  const Homeopathy({Key? key}) : super(key: key);

  @override
  _HomeopathyState createState() => _HomeopathyState();
}

class _HomeopathyState extends State<Homeopathy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Homeopathy'),
      ),
    );
  }
}
