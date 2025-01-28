import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/methods/custom_border_radius.dart';
import 'package:car_pooling/core/widgets/custom_map_divider.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_search_appbar.dart';
import 'package:flutter/material.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomSearchAppbar(),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: customBorderRadius(),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
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
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '10:00',
                                  style: TextStyle(
                                    color: kButtonColor,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '11:00',
                                  style: TextStyle(
                                    color: kButtonColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          CustomMapDivider(
                            color: kButtonColor,
                            borderColor: Color.fromARGB(255, 166, 180, 190),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'From',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kMutedColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Cairo',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kButtonColor,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'To',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kMutedColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Alex',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kButtonColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '25 LE',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
