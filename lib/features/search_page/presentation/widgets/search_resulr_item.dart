import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/core/widgets/custom_map_divider.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key, required this.backgroundColor, required this.foregroundColor, required this.secoundaryColor,
  });
  final Color backgroundColor;
  final Color foregroundColor;
  final Color secoundaryColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: foregroundColor,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
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
              SizedBox(
                height: 133,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '10:00',
                                style: TextStyle(
                                  color: foregroundColor,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '11:00',
                                style: TextStyle(
                                  color: foregroundColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        CustomMapDivider(
                          color: foregroundColor,
                          borderColor: const Color.fromARGB(255, 166, 180, 190),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Opacity(
                              opacity: .4,
                              child: Text(
                                'From',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: foregroundColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Cairo',
                              style: TextStyle(
                                fontSize: 15,
                                color: foregroundColor,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Opacity(
                              opacity: .4,
                              child: Text(
                                'To',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: foregroundColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Alex',
                              style: TextStyle(
                                fontSize: 15,
                                color: foregroundColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '25 LE',
                      style: TextStyle(
                        color: secoundaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const CustomImageContainer(
                    imageUrl: 'assets/images/personal_images/Amr.jpg',
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Amr',
                    style: TextStyle(
                      color: secoundaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}