import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:car_pooling/core/widgets/custom_button.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/chose_date_widget.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/chose_number_of_passengers.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/custom_checkbox_button.dart';
import 'package:car_pooling/features/home%20page/presentation/widgets/custom_home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomHomeAppbar(),
        const SizedBox(
          height: 47,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ChoseDateWidget()
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Passengers',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const ChoseNumberOfPassengers(),
              const SizedBox(
                height: 35,
              ),
              CustomButton(
                child: 'Search',
                onPressed: () {
                  GoRouter.of(context)
                      .push(AppRouter.searchPagePath);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
