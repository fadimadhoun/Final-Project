import 'package:Fitclub/MainNavScreen.dart';
import 'package:flutter/material.dart';
import '../Value/ValueColor.dart';

class Button extends StatelessWidget {
  final String text;

  const Button(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      },
      child: Container(
        height: 58.0,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: ValueColor.gradient,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
