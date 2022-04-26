  import 'package:flutter/material.dart';

  class BottomNavigat extends StatefulWidget {
    const BottomNavigat({Key? key}) : super(key: key);

    @override
    _BottomNavigatState createState() => _BottomNavigatState();
  }

  class _BottomNavigatState extends State<BottomNavigat> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: Card(
          child: Row(
            mainAxisSize: MainAxisSize.min,

            children: [
              Container(color: Colors.red,height: 20,width: 20,),
              Container(color: Colors.red,height: 20,width: 20,),
              Container(color: Colors.red,height: 20,width: 20,),
              Container(color: Colors.red,height: 20,width: 20,),
            ],
          ),
        ),
      );
    }
  }
