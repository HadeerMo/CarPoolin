import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/features/login_page/presentation/widgets/custom_login_logo.dart';
import 'package:flutter/material.dart';

class CustomLoginAppbar extends StatelessWidget {
  const CustomLoginAppbar({
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
      child: const Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomLoginLogo(),
          SizedBox(
            height: 20,
          ),
          Text(
            'CarPoolin',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Join today to unlock',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '100+ travels everyday!',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
