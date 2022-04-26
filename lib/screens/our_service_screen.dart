import 'package:cheery_mobile_call/config/color.dart';
import 'package:cheery_mobile_call/screens/sms_code_screen.dart';
import 'package:cheery_mobile_call/widgets/service_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class OurServiceScreen extends StatefulWidget {
  const OurServiceScreen({Key? key}) : super(key: key);

  @override
  _OurServiceScreenState createState() => _OurServiceScreenState();
}

class _OurServiceScreenState extends State<OurServiceScreen> {
  bool service1 = false;
  bool service2 = false;
  bool service3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Our Service',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Please review our terms",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  ServiceWidget(
                    color: service1,
                    onTap: () {
                      setState(() {
                        service1 = !service1;
                      });
                    },
                    text1: 'I am at least',
                    text2: ' 18 years old',
                  ),
                  ServiceWidget(
                    color: service2,
                    onTap: () {
                      setState(() {
                        service2 = !service2;
                      });
                    },
                    text1: "I agree to Cherry's ",
                    text2: 'Terms\n of Service',
                    color2: Colors.orange,
                  ),
                  ServiceWidget(
                    color: service3,
                    onTap: () {
                      setState(() {
                        service3 = !service3;
                      });
                    },
                    text1: "I agree to Cherry's",
                    text2: ' Privacy\n Policy',
                    color2: Colors.orange,
                  )
                ],
              ),
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.orange.shade500,
              text: 'Sign up',
              textColor: Colors.white,
              onTap: () {},
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              text: 'Back',
              textColor: Colors.black,
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SmsCodeScreen()));
              },
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
