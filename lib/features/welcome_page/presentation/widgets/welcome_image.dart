import 'package:car_pooling/constants.dart';
import 'package:flutter/material.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      width: MediaQuery.of(context).size.width * .98,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(kCarPoolinImageLogo),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
