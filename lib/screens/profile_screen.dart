import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/custom_button.dart';
import 'our_service_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final imagePick = ImagePicker();

  int slide = 0;

  String path = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf3b56),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Hey, Beautiful!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'upload a picture of yourself',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        height: 240,
                        width: 240,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black12),
                        child: path == ''
                            ? Center(
                                child: Container(
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffdd7383)),
                                  child: Icon(CupertinoIcons.person_fill,
                                      color: Colors.black12, size: 140),
                                ),
                              )
                            : Center(
                                child: CircleAvatar(
                                maxRadius: 95,
                                backgroundImage: FileImage(File(
                                  path,
                                )),
                              )))
                  ],
                ),
              ),
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.orange.shade500,
              text: 'Take a Photo',
              textColor: Colors.white,
              onTap: () async {
                final image =
                    await imagePick.pickImage(source: ImageSource.gallery);

                if (image != null) {
                  setState(() {
                    path = image.path;
                  });
                }
              },
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              text: 'Choose From Photos',
              textColor: Colors.black,
              onTap: () async {
                final camImg =
                    await imagePick.pickImage(source: ImageSource.camera);
                if (camImg != null) {
                  setState(() {
                    path = camImg.path;
                  });
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => OurServiceScreen()));
              },
              child: Text(
                'Maybe later',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
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
