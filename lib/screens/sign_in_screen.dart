import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'gender_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf3b56),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    hint: '',
                    textAlign: TextAlign.center,
                  ),
                  CustomTextField(
                    hint: '',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.orange.shade500,
              text: 'Login',
              textColor: Colors.white,
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => GenderScreen()));
              },
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              text: 'Back',
              textColor: Colors.black,
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
