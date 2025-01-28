import 'package:car_pooling/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSwapButton extends StatelessWidget {
  const CustomSwapButton({
    super.key, this.onPressed,
  });
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 47,
      child: PhysicalModel(
        color: kappMainColor,
        shape: BoxShape.circle,
        child: FloatingActionButton(
          onPressed: onPressed,
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
          foregroundColor: kButtonColor,
          child: const Icon(
            FontAwesomeIcons.retweet,
            size: 15,
          ),
        ),
      ),
    );
  }
}
