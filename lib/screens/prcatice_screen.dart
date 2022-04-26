import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      isExpand = !isExpand;
                    });
                  },
                  child: Text('Show')),
              isExpand
                  ? Wrap(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Card(
                            color: Colors.red,
                          ),
                        )
                      ],
                    )
                  : Container()
            ]),
      ),
    );
  }
}
