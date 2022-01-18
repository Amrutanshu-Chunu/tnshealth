import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tnshealth/screen/Dashboard.dart';

enum SingingCharacter { Male, Female }

class signuppage extends StatefulWidget {
  signuppage({Key? key}) : super(key: key);

  @override
  _signuppageState createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  @override
  final fullnamecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  final phonenumbercontroller = TextEditingController();

  final kTextStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final kTabBar = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  SingingCharacter? _character = SingingCharacter.Male;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: fullnamecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
              ),
            ),
            const SizedBox(height: 20),
            // Text('Patient Name', style: kTabBar),
            // const SizedBox(height: 20),
            TextField(
              controller: agecontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Age',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                RadioListTile<SingingCharacter>(
                  title: const Text('Male'),
                  value: SingingCharacter.Male,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                RadioListTile<SingingCharacter>(
                  title: const Text('Female'),
                  value: SingingCharacter.Female,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email-Id',
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: confirmpasswordcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
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
              child: ElevatedButton(
                  onPressed: () {
                    print(fullnamecontroller.text);
                    print(agecontroller.text);
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                    print(confirmpasswordcontroller.text);

                    print(phonenumbercontroller.text);
                    DashBoard();
                  },
                  child: const Text(
                    'Book Appointment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
