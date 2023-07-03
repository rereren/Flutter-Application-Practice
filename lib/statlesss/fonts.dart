import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  final String text;

  CustomFont({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
