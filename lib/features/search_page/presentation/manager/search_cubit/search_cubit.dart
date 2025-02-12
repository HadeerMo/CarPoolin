import 'package:bloc/bloc.dart';
import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/features/search_page/data/repositories/search_result_repo.dart';
import 'package:flutter/material.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchResultRepo) : super(SearchInitial());
  final SearchResultRepo searchResultRepo;
  Future<void> fetchSearchResult() async {
    emit(SearchLoading());
    var result = await searchResultRepo.fetchSerchResultData();
    result.fold((error) {
      emit(SearchFailue(errMsg: error.errorMsg));
    }, (carPoolinData) {
      emit(SearchSuccess(carPoolinData: carPoolinData));
    });
  }
}
