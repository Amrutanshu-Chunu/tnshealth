import 'package:flutter/material.dart';
import 'package:tnshealth/allopathy/allopathy.dart';
import 'package:tnshealth/ayurvedic/ayurvedic.dart';
import 'package:tnshealth/homeopathy/homeopathy.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  final kConsultTextstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 45,
  );
  final kTextStyle = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              // padding: EdgeInsets.all(5),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.blue),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Allopathy();
                      },
                    ));
                  },
                  child: Center(
                      child: Text('Allopathy', style: kConsultTextstyle))),
            ),
          ),
          Center(
            child: Container(
              // padding: EdgeInsets.all(5),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.blue),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Ayurvedic();
                      },
                    ));
                  },
                  child: Center(
                      child: Text('Ayurvedic', style: kConsultTextstyle))),
            ),
          ),
          Center(
            child: Container(
              // padding: EdgeInsets.all(5),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.blue),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Homeopathy();
                      },
                    ));
                  },
                  child: Center(
                      child: Text('Homeopathy', style: kConsultTextstyle))),
            ),
          ),
        ],
      ),
    );
  }
}
