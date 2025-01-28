import 'package:car_pooling/features/welcome_page/presentation/widgets/custom_floating_action_button.dart';
import 'package:car_pooling/features/welcome_page/presentation/widgets/sliding_test.dart';
import 'package:car_pooling/features/welcome_page/presentation/widgets/welcome_image.dart';
import 'package:flutter/material.dart';

class WelcomePageBody extends StatefulWidget {
  const WelcomePageBody({super.key});

  @override
  State<WelcomePageBody> createState() => _WelcomePageBodyState();
}

class _WelcomePageBodyState extends State<WelcomePageBody>
    with TickerProviderStateMixin {

  late AnimationController titleAnimationController;
  late AnimationController subtitleAnimationController;
  late Animation<Offset> titleSlidingAnimation;
  late Animation<Offset> subtitleSlidingAnimation;

  @override
  void initState() {
    super.initState();
    titleAnimation();
    subtitleAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const WelcomeImage(),
        const SizedBox(
          height: 40,
        ),
        SlidingText(
          slidingAnimation: titleSlidingAnimation,
          child:const Text(
            'CarPoolin',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SlidingText(
          slidingAnimation: subtitleSlidingAnimation,
          child: const Text(
            'Drive & Save Money',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const CustomFloatingButton(),
      ],
    );
  }




  void subtitleAnimation() {
    subtitleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    
    subtitleSlidingAnimation =
        Tween<Offset>(begin: const Offset(-7, 0), end: Offset.zero)
            .animate(subtitleAnimationController);
    subtitleAnimationController.forward();
  }

  void titleAnimation() {
      titleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    
    titleSlidingAnimation =
        Tween<Offset>(begin: const Offset(-7, 0), end: Offset.zero)
            .animate(titleAnimationController);
    titleAnimationController.forward();
  }
}


