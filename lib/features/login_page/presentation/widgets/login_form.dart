import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:car_pooling/core/widgets/custom_button.dart';
import 'package:car_pooling/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Email',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 23,
          ),
          CustomTextFormField(
            hintText: 'Password',
            secure: true,
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 23,
          ),
          CustomTextFormField(
            hintText: 'Name',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 23,
          ),
          CustomTextFormField(
            hintText: 'Surname',
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 23,
          ),
          CustomTextFormField(
            hintText: 'Phone Number',
            keyboardType: TextInputType.phone,
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            child: 'Start',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                GoRouter.of(context).push(AppRouter.homePath);
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
