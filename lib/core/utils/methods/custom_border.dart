
  import 'package:flutter/material.dart';

OutlineInputBorder customBorder() {
    return OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 199, 199, 199),
            ),
            borderRadius: BorderRadius.circular(50)
          );
  }