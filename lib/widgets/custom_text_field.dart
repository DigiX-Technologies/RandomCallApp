import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  double? height;
  TextInputAction? textInputAction;
  int? maxline;
  String? hint;
  TextAlign? textAlign;

  CustomTextField(
      {this.height,
      this.textInputAction,
      this.maxline,
      this.hint,
      this.textAlign});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)),
        child: TextField(
          maxLines: widget.maxline,
          textInputAction: widget.textInputAction,
          textAlign: widget.textAlign!,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: TextStyle(color: Colors.white54, fontSize: 18),
              contentPadding: EdgeInsets.only(left: 10, top: 10),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
