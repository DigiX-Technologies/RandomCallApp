import 'package:cheery_mobile_call/widgets/custom_button.dart';
import 'package:cheery_mobile_call/widgets/custom_tap_button.dart';
import 'package:cheery_mobile_call/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  int select = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xffdf3b56),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Report User',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomTapButton(
                        width: double.infinity,
                        height: 50,
                        text: 'Nudity/Sexual Content',
                        color: select == 1 ? true : false,
                        onTap: () {
                          setState(() {
                            select = 1;
                          });
                        },
                      ),
                      CustomTapButton(
                        width: double.infinity,
                        height: 50,
                        text: 'Hate Speech/Bullying',
                        color: select == 2 ? true : false,
                        onTap: () {
                          setState(() {
                            select = 2;
                          });
                        },
                      ),
                      CustomTapButton(
                        width: double.infinity,
                        height: 50,
                        text: 'Impersonation',
                        color: select == 3 ? true : false,
                        onTap: () {
                          setState(() {
                            select = 3;
                          });
                        },
                      ),
                      CustomTapButton(
                        width: double.infinity,
                        height: 50,
                        text: 'Other',
                        color: select == 4 ? true : false,
                        onTap: () {
                          setState(() {
                            select = 4;
                          });
                        },
                      ),
                      CustomTextField(
                        hint: 'Detail your experience',
                        textAlign: TextAlign.start,
                        maxline: 6,
                        textInputAction: TextInputAction.newline,
                        height: 150,
                      )
                    ],
                  ),
                ),
              ),
              CustomButton(
                onTap: () {},
                color: Colors.amber,
                text: 'Submit Report',
                width: double.infinity,
                height: 50,
              ),
              CustomButton(
                onTap: () {},
                color: Colors.white,
                text: 'Cancel',
                textColor: Colors.black,
                width: double.infinity,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
