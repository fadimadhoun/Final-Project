import 'package:flutter/material.dart';

class BnScreen {
  final String title;
  final Widget widget;
  final Widget? iconCenter;
  final Widget? icon;

  const BnScreen({
    required this.title,
    required this.widget,
     this.iconCenter,
     this.icon,
  });
}
