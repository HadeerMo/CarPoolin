import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/drive_profile_licence_item.dart';
import 'package:flutter/material.dart';

class DriveProfileLicencePart extends StatelessWidget {
  const DriveProfileLicencePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kappMainColor,
          borderRadius: customBorderRadius(),
        ),
        child: const Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DriveProfileLicenceItem(text: 'ID verified'),
              SizedBox(height: 15),
              DriveProfileLicenceItem(text: 'Driving license uploaded'),
            ],
          ),
        ),
      ),
    );
  }
}
