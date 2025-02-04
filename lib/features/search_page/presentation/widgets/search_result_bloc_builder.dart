import 'package:car_pooling/constants.dart';
import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:car_pooling/features/search_page/presentation/manager/search_cubit/search_cubit.dart';
import 'package:car_pooling/features/search_page/presentation/widgets/search_resulr_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultBlocBuilder extends StatelessWidget {
  const SearchResultBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                Color bkColor, forColor, seColor;
                if (index % 2 != 0) {
                  bkColor = kButtonColor;
                  forColor = Colors.white;
                  seColor = kappMainColor;
                } else {
                  bkColor = Colors.white;
                  forColor = kButtonColor;
                  seColor = Colors.black;
                }
                return SearchResultItem(
                  carpoolinModel: state.carPoolinData[index],
                  backgroundColor: bkColor,
                  foregroundColor: forColor,
                  secoundaryColor: seColor,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.carBookingPagePath,extra: state.carPoolinData[index],);
                  },
                );
              },
              childCount: state.carPoolinData.length,
            ),
          );
        } else if (state is SearchFailue) {
          return SliverToBoxAdapter(
            child: Text(
              state.errMsg,
              style: TextStyle(
                color: Colors.red[300],
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
