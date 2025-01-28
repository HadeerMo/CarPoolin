import 'package:flutter/material.dart';

class CustomInputForm extends StatelessWidget {
  const CustomInputForm({
    super.key,
    required this.labelValue,
    this.onChanged, this.controller,
  });
  final String labelValue;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          labelText: labelValue,
          labelStyle: TextStyle(
            fontSize: 20,
            color: const Color.fromARGB(255, 230, 246, 250).withOpacity(.7),
            fontWeight: FontWeight.bold
          ),
          contentPadding: const EdgeInsets.all(0),
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}