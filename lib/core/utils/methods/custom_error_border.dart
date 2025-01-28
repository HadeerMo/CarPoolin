  import 'package:flutter/material.dart';

OutlineInputBorder customErrorBorder() {
    return OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 234, 153, 133),
            ),
            borderRadius: BorderRadius.circular(50)
          );
  }