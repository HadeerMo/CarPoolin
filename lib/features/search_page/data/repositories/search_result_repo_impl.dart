import 'package:car_pooling/core/error/failure.dart';
import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/core/utils/functions/api_service.dart';
import 'package:car_pooling/features/search_page/data/repositories/search_result_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchResultRepoImpl extends SearchResultRepo {
  final ApiService apiService;

  SearchResultRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<CarpoolinModel>>> fetchSerchResultData() async {
    try {
      var data = await apiService.get(endPoint: "api/CarPoolin");
      List<CarpoolinModel> carPoolin = [];
      for (var item in data) {
        carPoolin.add(CarpoolinModel.fromJson(item));
      }
      return Right(carPoolin);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
