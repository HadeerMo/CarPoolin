import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/drive_profile_body.dart';
import 'package:flutter/material.dart';

class DriveProfilePage extends StatelessWidget {
  const DriveProfilePage({super.key, required this.carpoolinModel});
  final CarpoolinModel carpoolinModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DriveProfileBody(carpoolinModel: carpoolinModel,),
      ),
    );
  }
}
