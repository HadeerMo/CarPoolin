import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kappMainColor,
        borderRadius: customBorderRadius(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: child,
      ),
    );
  }
}