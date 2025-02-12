import 'package:flutter/material.dart';

class CustomDriveProfileTitle extends StatelessWidget {
  const CustomDriveProfileTitle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),
    );
  }
}