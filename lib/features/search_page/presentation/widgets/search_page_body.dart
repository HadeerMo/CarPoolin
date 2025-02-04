import 'package:car_pooling/features/search_page/presentation/widgets/custom_search_appbar.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/search_result_bloc_builder.dart';
import 'package:flutter/material.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomSearchAppbar(),
        ),
        SearchResultBlocBuilder(),
      ],
    );
  }
}


