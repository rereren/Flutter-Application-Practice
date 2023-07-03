import 'package:flutter/material.dart';

import '../statlesss/fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomFont(
      text: 'Hello World',
    ));
  }
}
