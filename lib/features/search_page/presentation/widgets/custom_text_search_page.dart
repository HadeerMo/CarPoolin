import 'package:flutter/material.dart';

class CustomTextSearchPage extends StatelessWidget {
  const CustomTextSearchPage({
    super.key, required this.mainText, required this.opacityText,
  });
  final String mainText;
  final String opacityText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          mainText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        Opacity(
          opacity: .5,
          child: Text(
            opacityText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
