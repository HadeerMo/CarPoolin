import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/models/car.dart';
import 'package:flutter/material.dart';

class CarInfo extends StatelessWidget {
  const CarInfo({super.key, required this.car});
  final Car car;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: MediaQuery.of(context).size.width * .09,
            height: MediaQuery.of(context).size.width * .09,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/carSymple.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          '${car.type} ${car.color} Car',
          style: const TextStyle(
            fontSize: 16,
            color: kButtonColor,
          ),
        ),
      ],
    );
  }
}
