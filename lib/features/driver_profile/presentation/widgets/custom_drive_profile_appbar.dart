import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/widgets/custom_appbar.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomDriveProfileAppbar extends StatelessWidget {
  const CustomDriveProfileAppbar({
    super.key,
    required this.carpoolinModel,
  });

  final CarpoolinModel carpoolinModel;

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(
              FontAwesomeIcons.angleLeft,
              color: Colors.white,
              size: 26,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                CustomImageContainer(
                  imageUrl: carpoolinModel.image,
                  size: 70,
                ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  carpoolinModel.driverName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}