import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/car_poolin_form.dart';
import 'package:flutter/material.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kappMainColor,
        borderRadius: customBorderRadius(),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Where are',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            Text(
              'you going?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CarPoolinForm(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}


