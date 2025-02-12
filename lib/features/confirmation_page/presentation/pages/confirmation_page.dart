import 'package:car_pooling/features/confirmation_page/presentation/widgets/confirmation_page_body.dart';
import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: ConfirmationPageBody(),
    ));
  }
}
