import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.carpoolinModel,
  });

  final CarpoolinModel carpoolinModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageContainer(
          imageUrl: carpoolinModel.image,
          size: MediaQuery.of(context).size.width * .18,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.driveProfilePagePath,extra: carpoolinModel);
              },
              child: Text(
                carpoolinModel.driverName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: .5,
                  child: Text(
                    carpoolinModel.rate.toString(),
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                const Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 14,
                ),
                const SizedBox(
                  width: 3,
                ),
                Opacity(
                  opacity: .5,
                  child: Text(
                    '(${carpoolinModel.reviewsNum} reviews)',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
