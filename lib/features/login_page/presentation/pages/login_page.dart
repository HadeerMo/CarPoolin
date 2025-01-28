import 'package:car_pooling/features/login_page/presentation/widgets/login_page_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoginPageBody(),
      )
    );
  }
}