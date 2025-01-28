import 'package:car_pooling/features/search_page/presentation/widgets/search_page_body.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchPageBody(),
      ),
    );
  }
}
