import 'package:flutter/material.dart';

class CustomClickableTextWidget extends StatelessWidget {
  const CustomClickableTextWidget({
    super.key,
    this.onTap,
    required this.text,
    required this.color,
  });
  final void Function()? onTap;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style:
            TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}