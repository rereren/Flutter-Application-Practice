import 'package:flutter/material.dart';
import 'package:my_app/homepage/home.dart';

class Extrapage extends StatefulWidget {
  const Extrapage({super.key});

  @override
  State<Extrapage> createState() => _ExtrapageState();
}

class _ExtrapageState extends State<Extrapage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
        },
        child: Text("sad"),
      ),
    );
  }
}
