import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/core/widgets/custom_map_divider.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_image_container.dart';
import 'package:flutter/material.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.secoundaryColor,
    required this.carpoolinModel, this.onTap,
  });
  final Color backgroundColor;
  final Color foregroundColor;
  final Color secoundaryColor;
  final CarpoolinModel carpoolinModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                                  '${carpoolinModel.fromDate.split('T')[1].split(':')[0]}:${carpoolinModel.fromDate.split('T')[1].split(':')[1]}',
                                  style: TextStyle(
                                    color: foregroundColor,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '${carpoolinModel.toDate.split('T')[1].split(':')[0]}:${carpoolinModel.toDate.split('T')[1].split(':')[1]}',
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
                                carpoolinModel.from,
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
                                carpoolinModel.to,
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
                        '${carpoolinModel.fare} LE',
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
                    CustomImageContainer(
                      imageUrl: carpoolinModel.image,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      carpoolinModel.driverName,
                      style: TextStyle(
                        color: secoundaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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
      ),
    );
  }
}
