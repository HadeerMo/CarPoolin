import 'package:flutter/material.dart';

class DriveProfileLicenceItem extends StatelessWidget {
  const DriveProfileLicenceItem({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_sharp,
          color: Colors.white,
          size: 27,
        ),
        const SizedBox(
          width: 13,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
