import 'package:flash_chat/components/custom_button.dart';
import 'package:flash_chat/components/custome_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              hintText: 'Enter your email',
              borderSideColor: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 8.0,
            ),
            CustomTextField(
              hintText: 'Enter your password.',
              borderSideColor: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 24.0,
            ),
            CustomButton(
              buttonName: 'Log-In',
              color: Colors.lightBlueAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
