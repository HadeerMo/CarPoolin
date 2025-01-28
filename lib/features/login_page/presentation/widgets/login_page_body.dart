import 'package:car_pooling/features/login_page/presentation/widgets/custom_login_appbar.dart';
import 'package:car_pooling/features/login_page/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomLoginAppbar(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: LoginForm(),
        ),
      ],
    );
  }
}

