import 'package:flutter/material.dart';

class CustomItemCarPoolinAppbar extends StatelessWidget {
  const CustomItemCarPoolinAppbar({
    super.key, required this.date, required this.destination, required this.destinationDetails,
  });
  final String date;
  final String destination;
  final String destinationDetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              date,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 17,
            ),
            Opacity(
              opacity: .5,
              child: Text(
                destination,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          destinationDetails,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
