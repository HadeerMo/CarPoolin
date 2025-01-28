
  import 'package:car_pooling/constants.dart';
import 'package:flutter/material.dart';

OutlineInputBorder customFocusedBorder() {
    return OutlineInputBorder(
            borderSide: const BorderSide(
              color: kappMainColor,
            ),
            borderRadius: BorderRadius.circular(50)
          );
  }