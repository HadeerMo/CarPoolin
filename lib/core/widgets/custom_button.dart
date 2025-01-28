import 'package:car_pooling/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed, required this.child,
  });
  final void Function()? onPressed;
  final String child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        elevation: WidgetStatePropertyAll(5),
        backgroundColor: WidgetStatePropertyAll(kButtonColor),
        minimumSize: WidgetStatePropertyAll(
          Size(
            double.infinity,
            0,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17),
        child: Text(
          child,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}
