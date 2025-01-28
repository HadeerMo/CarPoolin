import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_text_search_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomSearchAppbar extends StatelessWidget {
  const CustomSearchAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kappMainColor,
        borderRadius: customBorderRadius(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
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
            const SizedBox(
              height: 15,
            ),
            const CustomTextSearchPage(mainText: 'Ride from ',opacityText: 'Cairo',),
            const CustomTextSearchPage(mainText: 'to ',opacityText: 'Alex',),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}