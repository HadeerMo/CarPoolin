import 'package:car_pooling/features/welcome_page/presentation/widgets/welcome_page_body.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WelcomePageBody(),
        // floatingActionButton: Text('button'),
        // floatingActionButtonLocation: FloatingActionButtonLocation.,
      ),
    );
  }
}
