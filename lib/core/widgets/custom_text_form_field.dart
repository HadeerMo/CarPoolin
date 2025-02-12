import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border.dart';
import 'package:car_pooling/core/utils/methods/custom_error_border.dart';
import 'package:car_pooling/core/utils/methods/custom_focused_border.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.secure = false,
    this.keyboardType,
  });
  final String hintText;
  final void Function(String)? onChanged;
  final bool secure;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this field is required';
        }
        return null;
      },
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: secure,
      cursorColor: kappMainColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 184, 184, 184),
        ),
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customFocusedBorder(),
        errorBorder: customErrorBorder(),
      ),
    );
  }
}
