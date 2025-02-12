import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/confirmation_part.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/main_part.dart';
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
                MainPart(carpoolinModel: carpoolinModel),
                const ConfirmationPart(),
              ],
            ),
          ),
        );
      },
    );
  }
}




