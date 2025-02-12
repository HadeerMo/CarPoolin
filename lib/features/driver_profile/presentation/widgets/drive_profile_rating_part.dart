import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/features/driver_profile/presentation/widgets/custom_drive_profile_title.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DriveProfileRatingPart extends StatelessWidget {
  const DriveProfileRatingPart({
    super.key,
    required this.rating,
    required this.reviewsNum,
  });

  final String rating;
  final String reviewsNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kappMainColor,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: customBorderRadius(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDriveProfileTitle(text: 'Level:'),
                  SizedBox(height: 15),
                  CustomDriveProfileTitle(text: 'Rating:'),
                  SizedBox(height: 15),
                  CustomDriveProfileTitle(text: 'Reviews:'),
                ],
              ),
              const SizedBox(width: 18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Opacity(
                    opacity: .27,
                    child: CustomDriveProfileTitle(text: 'Pro'),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: .27,
                        child: CustomDriveProfileTitle(
                          text: rating,
                        ),
                      ),
                      const SizedBox(width: 11),
                      const Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.amber,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Opacity(
                    opacity: .27,
                    child: CustomDriveProfileTitle(
                      text: reviewsNum,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}