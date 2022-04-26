import 'package:flutter/material.dart';

class CustomTapButton extends StatefulWidget {
  double? height, width;
  bool color;
  Function()? onTap;
  String? text;

  CustomTapButton(
      {required this.color, this.width, this.height, this.text, this.onTap});

  @override
  _CustomTapButtonState createState() => _CustomTapButtonState();
}

class _CustomTapButtonState extends State<CustomTapButton> {
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
              primary:
                  widget.color ? Colors.white : Colors.black.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          onPressed: (widget.onTap),
          child: Text(
            widget.text!,
            style: TextStyle(
                color: widget.color ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
