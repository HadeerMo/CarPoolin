import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
    required this.filledColor,
    required this.borderColor,
  });
  final Color filledColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: filledColor,
          border: Border.all(
            color: borderColor,
            width: 3,
          )),
    );
  }
}