import 'package:car_pooling/features/home%20page/presentation/widgets/custom_circular_container.dart';
import 'package:flutter/material.dart';

class CustomMapDivider extends StatelessWidget {
  const CustomMapDivider({
    super.key,
    required this.color, required this.borderColor,
  });
  final Color color;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCircularContainer(
          filledColor: Colors.transparent,
          borderColor: color,
        ),
        Container(
          width: 1, // Line thickness
          height: 90, // Line height
          color: color, // Line color
        ),
        CustomCircularContainer(
          filledColor: color,
          borderColor: borderColor,
        ),
      ],
    );
  }
}