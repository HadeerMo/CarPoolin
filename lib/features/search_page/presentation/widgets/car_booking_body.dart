import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/widgets/custom_button.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/car_info.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/customer_car_booking_appbar.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/user_info.dart';
import 'package:flutter/material.dart';

class CarBookingBody extends StatelessWidget {
  const CarBookingBody({super.key, required this.carpoolinModel});
  final CarpoolinModel carpoolinModel;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Column(
                    children: [
                      const CustomButton(child: 'Order Now'),
                      const SizedBox(height: 17),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .73,
                        child: const Opacity(
                          opacity: .3,
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              'By clicking on "Order Now" button I agree with Terms and Policies of using Carpoolin.',
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: 11.5, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
