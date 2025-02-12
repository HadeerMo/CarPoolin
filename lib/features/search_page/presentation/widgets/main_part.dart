import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/car_info.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/customer_car_booking_appbar.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/user_info.dart';
import 'package:flutter/material.dart';

class MainPart extends StatelessWidget {
  const MainPart({
    super.key,
    required this.carpoolinModel,
  });

  final CarpoolinModel carpoolinModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCarBookingAppbar(carpoolinModel: carpoolinModel),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfo(carpoolinModel: carpoolinModel),
              const SizedBox(height: 30),
              CarInfo(car: carpoolinModel.driverCar),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}