import 'package:flash_chat/components/custom_button.dart';
import 'package:flash_chat/components/custome_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            CustomTextField(
              hintText: 'Enter your mail',
              borderSideColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 8.0,
            ),
            CustomTextField(
              hintText: 'Enter your password',
              borderSideColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 24.0,
            ),
            CustomButton(
              buttonName: 'Register',
              color: Colors.blueAccent,
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
