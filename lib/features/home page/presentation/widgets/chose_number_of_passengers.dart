import 'package:car_pooling/constants.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

class ChoseNumberOfPassengers extends StatefulWidget {
  const ChoseNumberOfPassengers({
    super.key,
  });

  @override
  State<ChoseNumberOfPassengers> createState() =>
      _ChoseNumberOfPassengersState();
}

class _ChoseNumberOfPassengersState extends State<ChoseNumberOfPassengers> {
  Map<String, Color> passengerNumsColor = {
    '1': kappMainColor,
    '2': Colors.white,
    '3': Colors.white,
    '4': Colors.white,
  };
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckboxBotton(
          onTap: () {
            activeButton('1');
          },
          text: '1',
          backgroundColor: passengerNumsColor['1']!,
          foregroundColor: passengerNumsColor['1']! == kappMainColor
              ? Colors.white
              : kMutedColor,
          borderColor: passengerNumsColor['1']! == kappMainColor
              ? passengerNumsColor['1']!
              : kMutedColor,
        ),
        const SizedBox(width: 15),
        CustomCheckboxBotton(
          onTap: () {
            activeButton('2');
          },
          text: '2',
          backgroundColor: passengerNumsColor['2']!,
          foregroundColor: passengerNumsColor['2']! == kappMainColor
              ? Colors.white
              : kMutedColor,
          borderColor: passengerNumsColor['2']! == kappMainColor
              ? passengerNumsColor['2']!
              : kMutedColor,
        ),
        const SizedBox(width: 15),
        CustomCheckboxBotton(
          onTap: () {
            activeButton('3');
          },
          text: '3',
          backgroundColor: passengerNumsColor['3']!,
          foregroundColor: passengerNumsColor['3']! == kappMainColor
              ? Colors.white
              : kMutedColor,
          borderColor: passengerNumsColor['3']! == kappMainColor
              ? passengerNumsColor['3']!
              : kMutedColor,
        ),
        const SizedBox(width: 15),
        CustomCheckboxBotton(
          onTap: () {
            activeButton('4');
          },
          text: '4',
          backgroundColor: passengerNumsColor['4']!,
          foregroundColor: passengerNumsColor['4']! == kappMainColor
              ? Colors.white
              : kMutedColor,
          borderColor: passengerNumsColor['4']! == kappMainColor
              ? passengerNumsColor['4']!
              : kMutedColor,
        ),
      ],
    );
  }

  void activeButton(String buttonNum) {
    passengerNumsColor.forEach((key, value) {
      passengerNumsColor[key] = Colors.white;
    });

    if (passengerNumsColor.containsKey(buttonNum)) {
      passengerNumsColor[buttonNum] = kappMainColor;
    }
    setState(() {});
  }
}
