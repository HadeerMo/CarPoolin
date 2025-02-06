import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    super.key,
    required this.imageUrl, required this.size,
  });
  final String imageUrl;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
