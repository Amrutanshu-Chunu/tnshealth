import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tnshealth/medicine/fileupload.dart';
import 'package:tnshealth/screen/Dashboard.dart';
import 'package:image_picker/image_picker.dart';

class medicine extends StatefulWidget {
  const medicine({Key? key}) : super(key: key);

  @override
  _medicineState createState() => _medicineState();
}

class _medicineState extends State<medicine> {
  final adressline1namecontroller = TextEditingController();
  final adressline2namecontroller = TextEditingController();
  final citycontroller = TextEditingController();
  final statecontroller = TextEditingController();
  final pincodecontroller = TextEditingController();
  final phonenumbercontroller = TextEditingController();

  final kTextStyle = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  String dropdownValue = 'Allopathy';
  final kTabBar = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Type Of Medicine', style: kTabBar),
                DropdownButton<String>(
                  value: dropdownValue,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 3,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Allopathy', 'Ayurvedic', 'Homeopathy']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Upload Prescription', style: kTabBar),

                FloatingActionButton.extended(
                    label: const Text('Upload'),
                    icon: const Icon(Icons.file_upload_outlined),
                    backgroundColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return FileUpload();
                        },
                      ));
                    })

                // SpeedDial(
                //   animatedIcon: AnimatedIcons.add_event,
                //   animatedIconTheme: IconThemeData(size: 28.0),
                //   backgroundColor: Colors.green[900],
                //   visible: true,
                //   curve: Curves.bounceInOut,
                //   children: [
                //     SpeedDialChild(
                //       child: Icon(Icons.camera_alt, color: Colors.white),
                //       backgroundColor: Colors.green,
                //       onTap: () => print('Pressed Read Later'),
                //       label: 'Camera',
                //       labelStyle: TextStyle(
                //           fontWeight: FontWeight.w500, color: Colors.white),
                //       labelBackgroundColor: Colors.black,
                //     ),
                //     SpeedDialChild(
                //       child: Icon(Icons.image, color: Colors.white),
                //       backgroundColor: Colors.green,
                //       onTap: () => print('Pressed Write'),
                //       label: 'Gallery',
                //       labelStyle: TextStyle(
                //           fontWeight: FontWeight.w500, color: Colors.white),
                //       labelBackgroundColor: Colors.black,
                //     ),
                //   ],
                // ),
              ],
            ),

            const SizedBox(height: 20),
            Text('Delivery Adress', style: kTabBar),
            // const SizedBox(height: 20),

            const SizedBox(height: 10),
            TextField(
              controller: adressline1namecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adress Line 1',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: adressline2namecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adress Line 2',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: citycontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: statecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'State',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: pincodecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'PinCode',
              ),
            ),
            const SizedBox(height: 20),
            // Text('Mobile No.', style: kTabBar),
            // const SizedBox(height: 20),
            IntlPhoneField(
              controller: phonenumbercontroller,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                // print(phone.completeNumber);
              },
            ),
            Center(
                child: FloatingActionButton.extended(
              onPressed: () {
                print(adressline1namecontroller.text);
                print(adressline2namecontroller.text);
                print(citycontroller.text);
                print(statecontroller.text);
                print(pincodecontroller.text);
                print(phonenumbercontroller.text);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DashBoard();
                  },
                ));
              },
              label: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              // icon: const Icon(Icons.thumb_up),
              backgroundColor: Colors.blueGrey,
            )),
          ],
        ),
      ),
    );
  }
}
