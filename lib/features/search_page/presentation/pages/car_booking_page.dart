import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/car_booking_body.dart';
import 'package:flutter/material.dart';

class CarBookingPage extends StatelessWidget {
  const CarBookingPage({super.key, required this.carpoolinModel});
  final CarpoolinModel carpoolinModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CarBookingBody(
          carpoolinModel: carpoolinModel,
        ),
      ),
    );
  }
}
