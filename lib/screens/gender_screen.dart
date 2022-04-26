import 'package:cheery_mobile_call/screens/profile_screen.dart';
import 'package:cheery_mobile_call/widgets/custom_tap_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int select = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf3b56),
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
                      'Gender',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'I want to talk to',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTapButton(
                    text: 'Men',
                    width: double.infinity,
                    height: 50,
                    color: select == 1 ? true : false,
                    onTap: () {
                      setState(() {
                        setState(() {
                          select = 1;
                        });
                      });
                    },
                  ),
                  CustomTapButton(
                    text: 'Women',
                    width: double.infinity,
                    height: 50,
                    color: select == 2 ? true : false,
                    onTap: () {
                      setState(() {
                        setState(() {
                          select = 2;
                        });
                      });
                    },
                  ),
                  CustomTapButton(
                    text: 'Both',
                    width: double.infinity,
                    height: 50,
                    color: select == 3 ? true : false,
                    onTap: () {
                      setState(() {
                        setState(() {
                          select = 3;
                        });
                      });
                    },
                  )
                ],
              ),
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              text: 'Back',
              textColor: Colors.black,
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
