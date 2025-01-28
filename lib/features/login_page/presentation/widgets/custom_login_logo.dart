import 'package:car_pooling/constants.dart';
import 'package:flutter/material.dart';

class CustomLoginLogo extends StatelessWidget {
  const CustomLoginLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .47,
      height: MediaQuery.of(context).size.height * .16,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(kLoginLogo),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}