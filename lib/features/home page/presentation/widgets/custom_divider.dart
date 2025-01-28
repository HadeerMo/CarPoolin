import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: .9,
      width: MediaQuery.of(context).size.width * .58,
      margin: const EdgeInsets.only(bottom: 16, top: 5),
    );
  }
}