import 'package:flutter/material.dart';

class ButtonPicture extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  final bool transparent;
  EdgeInsets? margin;
  final double? height;
  final double? width;
  final double? fontSize;
  final double radius;
  final IconData? icon;
  final String? image;

  ButtonPicture(
      {required this.onPressed,
      required this.buttonText,
      this.transparent = false,
      this.margin,
      this.width,
      this.height,
      this.fontSize,
      this.radius = 5,
      required this.image,
      this.icon});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(width ?? 1200, height ?? 50),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );

    return Center(
        child: SizedBox(
            width: 200,
            height: 200,
            child: Padding(
              padding: margin ?? EdgeInsets.all(0),
              child: ElevatedButton(
                  child: Image.asset(image!), onPressed: onPressed),
            )));
  }
}
