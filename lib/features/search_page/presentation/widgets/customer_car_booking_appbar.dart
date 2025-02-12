import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/widgets/custom_appbar.dart';
import 'package:car_pooling/core/widgets/custom_map_divider.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_item_carpoolin_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomCarBookingAppbar extends StatelessWidget {
  const CustomCarBookingAppbar({
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
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Text(
                '${carpoolinModel.fare} LE',
                style: const TextStyle(
                  color: kButtonColor,
                  fontSize: 21.5,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomMapDivider(
                color: Colors.white,
                borderColor: Color.fromARGB(255, 217, 242, 250),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomItemCarPoolinAppbar(
                    date:
                        '${carpoolinModel.fromDate.split('T')[1].split(':')[0]}:${carpoolinModel.fromDate.split('T')[1].split(':')[1]}',
                    destination: carpoolinModel.from,
                    destinationDetails: carpoolinModel.fromAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomItemCarPoolinAppbar(
                    date:
                        '${carpoolinModel.toDate.split('T')[1].split(':')[0]}:${carpoolinModel.toDate.split('T')[1].split(':')[1]}',
                    destination: carpoolinModel.to,
                    destinationDetails: carpoolinModel.toAddress,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 45,
          ),
        ],
      ),
    );
  }
}
