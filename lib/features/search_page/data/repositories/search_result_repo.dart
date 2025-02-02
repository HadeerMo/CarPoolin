import 'package:car_pooling/core/error/failure.dart';
import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchResultRepo {
  Future<Either<Failure, List<CarpoolinModel>>> fetchSerchResultData();
}
