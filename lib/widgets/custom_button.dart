import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  double? height, width;
  Color? color, textColor;
  String? text;
  Function()? onTap;

  CustomButton(
      {this.color,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.textColor});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )),
          onPressed: (widget.onTap),
          child: Text(
            widget.text!,
            style:
                TextStyle(color: widget.textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
