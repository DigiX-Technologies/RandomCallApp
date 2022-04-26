import 'package:cheery_mobile_call/config/color.dart';
import 'package:cheery_mobile_call/screens/report_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/custom_button.dart';

class SmsCodeScreen extends StatefulWidget {
  const SmsCodeScreen({Key? key}) : super(key: key);

  @override
  _SmsCodeScreenState createState() => _SmsCodeScreenState();
}

class _SmsCodeScreenState extends State<SmsCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Enter your \nSMS Code',
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "A 4- digit code should've been\nrecieved.Please enter it below",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48.0),
                    child: PinCodeTextField(
                      enableActiveFill: true,
                      pinTheme: PinTheme(
                          activeColor: Colors.black12,
                          inactiveColor: Colors.black12,
                          activeFillColor: Colors.transparent,
                          inactiveFillColor: Colors.black12,
                          shape: PinCodeFieldShape.circle),
                      onChanged: (String value) {},
                      appContext: context,
                      length: 4,
                    ),
                  )
                ],
              ),
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.orange.shade500,
              text: 'Verify',
              textColor: Colors.white,
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => ReportScreen()));
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
