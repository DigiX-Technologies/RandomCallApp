import 'package:cheery_mobile_call/screens/our_service_screen.dart';
import 'package:cheery_mobile_call/screens/sign_in_screen.dart';
import 'package:cheery_mobile_call/widgets/custom_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:showcaseview/showcaseview.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  CollectionReference user = FirebaseFirestore.instance.collection('user');

  emailMethod() {
    auth
        .createUserWithEmailAndPassword(
            email: email.text, password: password.text)
        .then((value) {
      String uid = value.user!.uid;
      user.doc(uid).set({"email": email.text, "password": password.text});
    });
  }

  Future<void> google(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);
      }
    } catch (err) {
      print(err);
    }
  }

  // Future<void> signup(BuildContext context) async {
  //   try {
  //     final GoogleSignIn googleSignIn = GoogleSignIn();
  //     final GoogleSignInAccount? googleSignInAccount =
  //         await googleSignIn.signIn();
  //     if (googleSignInAccount != null) {
  //       final GoogleSignInAuthentication googleSignInAuthentication =
  //           await googleSignInAccount.authentication;
  //       final AuthCredential authCredential = GoogleAuthProvider.credential(
  //           idToken: googleSignInAuthentication.idToken,
  //           accessToken: googleSignInAuthentication.accessToken);
  //       // Getting users credential
  //       UserCredential result = await auth.signInWithCredential(authCredential);
  //       User? user = result.user;
  //
  //       if (result != null) {
  //         Navigator.pushReplacement(context,
  //             MaterialPageRoute(builder: (context) => OurServiceScreen()));
  //       } // if result not null we simply call the MaterialpageRoute,
  //       // for go to the HomePage screen
  //     }
  //   } catch (err) {
  //     print(err);
  //   }
  // }

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
                  children: [
                    Image.asset(
                      'images/cherry.png',
                    )
                  ],
                ),
              ),
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.white,
              text: 'Sign up with Google',
              textColor: Colors.black,
              onTap: () {},
            ),
            CustomButton(
              width: double.infinity,
              height: 50,
              color: Colors.orange.shade500,
              text: 'Sign up',
              textColor: Colors.white,
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SignInScreen()));
              },
              child: Text(
                'Already have an account? Sign in',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
