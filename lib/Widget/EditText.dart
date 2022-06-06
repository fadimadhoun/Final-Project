import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Value/ValueColor.dart';

class EditText extends StatelessWidget {
  final String text;
  final TextInputType? type;

  const EditText({required this.text, this.type});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white, fontSize: 16),
      keyboardType: type,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: text,
          hintStyle:
              TextStyle(fontSize: 15, color: Color(ValueColor.SilverColor)),
          enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: Color(ValueColor.SilverColor))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color(ValueColor.focusedBorder)))),
    );
  }
}
