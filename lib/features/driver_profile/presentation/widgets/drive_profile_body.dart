import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/custom_drive_profile_appbar.dart';
import 'package:flutter/material.dart';

class DriveProfileBody extends StatelessWidget {
  const DriveProfileBody({super.key, required this.carpoolinModel});
  final CarpoolinModel carpoolinModel;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomDriveProfileAppbar(carpoolinModel: carpoolinModel),
      ],
    );
  }
}


