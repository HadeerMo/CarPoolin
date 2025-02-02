import 'package:car_pooling/constants.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/custom_search_appbar.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/search_resulr_item.dart';
import 'package:flutter/material.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomSearchAppbar(),
        SearchResultItem(
          backgroundColor: Colors.white,
          foregroundColor: kButtonColor,
          secoundaryColor: Colors.black,
        ),
        SearchResultItem(
          backgroundColor: kButtonColor,
          foregroundColor: Colors.white,
          secoundaryColor: kappMainColor,
        ),
      ],
    );
  }
}


