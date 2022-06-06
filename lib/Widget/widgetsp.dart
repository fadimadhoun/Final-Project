import 'package:flutter/material.dart';

class widgetsp extends StatelessWidget {
  final String text1;
  final String? text2;
  final String image;

  const widgetsp({required this.text1, this.text2, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Positioned(
            child: Image.asset(image),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text1,
              style: const TextStyle(color: Colors.white, fontSize: 15)),
          const Spacer(),
          Text(
            text2!,
            style: const TextStyle(fontSize: 14, color: Color(0xFF777A91)),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Color(0xFF646781),
          ),
        ],
      ),
    );
  }
}
