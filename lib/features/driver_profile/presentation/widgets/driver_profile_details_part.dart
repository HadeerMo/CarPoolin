import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/custom_drive_profile_title.dart';
import 'package:flutter/material.dart';

class DriverProfileDetailsPart extends StatelessWidget {
  const DriverProfileDetailsPart({
    super.key,
    required this.carpoolinModel,
  });

  final CarpoolinModel carpoolinModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: customBorderRadius(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomDriveProfileTitle(
                text: 'Meet ${carpoolinModel.driverName}',
              ),
              const SizedBox(height: 10),
              Opacity(
                opacity: .2,
                child: Text(
                  carpoolinModel.driverDetails,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
