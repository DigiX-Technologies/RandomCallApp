import 'package:flutter/material.dart';

class ServiceWidget extends StatefulWidget {
  bool color;
  String? text1, text2;
  Function()? onTap;
  Color? color1, color2;

  ServiceWidget(
      {required this.color,
      this.text1,
      this.text2,
      this.onTap,
      this.color1,
      this.color2});

  @override
  _ServiceWidgetState createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
      child: Row(
        children: [
          InkWell(

            splashColor: Colors.orange,
            borderRadius: BorderRadius.circular(30),
            onTap: (widget.onTap),
            child: AnimatedContainer(
              clipBehavior: Clip.antiAlias,
              curve: Curves.bounceIn,
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      widget.color ? Colors.orange.shade500 : Colors.black12),
              duration: Duration(seconds: 1),
              child: Center(
                child: Icon(
                  widget.color ? Icons.check : null,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: widget.text1,
                    style: TextStyle(color: widget.color1, fontSize: 16)),
                TextSpan(
                    text: widget.text2,
                    style: TextStyle(
                        color: widget.color2,
                        fontWeight: FontWeight.bold,
                        fontSize: 16))
              ])),
            ),
          )
        ],
      ),
    );
  }
}
