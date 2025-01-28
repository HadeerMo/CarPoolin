import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: SizedBox(
        width: 47,
        child: PhysicalModel(
          color: Colors.white,
          shape: BoxShape.circle,
          child: FloatingActionButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.loginPath);
            },
            shape: const CircleBorder(),
            backgroundColor: kButtonColor,
            foregroundColor: Colors.white,
            child: const Icon(
              FontAwesomeIcons.arrowRight,
              size: 19,
            ),
          ),
        ),
      ),
    );
  }
}
