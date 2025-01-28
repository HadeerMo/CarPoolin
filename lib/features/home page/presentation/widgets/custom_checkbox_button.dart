import 'package:flutter/material.dart';

class CustomCheckboxBotton extends StatelessWidget {
  const CustomCheckboxBotton({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
    this.onTap, required this.text,
  });
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.width * .13,
        width: MediaQuery.of(context).size.width * .13,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: foregroundColor,
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
