part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<CarpoolinModel> carPoolinData;

  SearchSuccess({required this.carPoolinData});
}

final class SearchFailue extends SearchState {
  final String errMsg;

  SearchFailue({required this.errMsg});
}

final class SearchLoading extends SearchState {}
