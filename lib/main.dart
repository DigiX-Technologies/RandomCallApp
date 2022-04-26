import 'package:cheery_mobile_call/screens/bottom_navi_screen.dart';
import 'package:cheery_mobile_call/screens/main_screen.dart';
import 'package:cheery_mobile_call/screens/prcatice_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const NewApp());
}

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      // home: Practice(),
      // home: BottomNavigat(),
    );
  }
}
