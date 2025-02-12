import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/custom_drive_profile_appbar.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/custom_drive_profile_title.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/drive_profile_licence_part.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/drive_profile_rating_part.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/driver_profile_details_part.dart';
import 'package:flutter/material.dart';

class DriveProfileBody extends StatelessWidget {
  const DriveProfileBody({super.key, required this.carpoolinModel});
  final CarpoolinModel carpoolinModel;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomDriveProfileAppbar(carpoolinModel: carpoolinModel),
        DriveProfileRatingPart(
          rating: carpoolinModel.rate.toString(),
          reviewsNum: carpoolinModel.reviewsNum.toString(),
        ),
        const DriveProfileLicencePart(),
        DriverProfileDetailsPart(carpoolinModel: carpoolinModel)
      ],
    );
  }
}
