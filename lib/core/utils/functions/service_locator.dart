import 'package:car_pooling/core/utils/functions/api_service.dart';
import 'package:car_pooling/features/search_page/data/repositories/search_result_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<SearchResultRepoImpl>(
    SearchResultRepoImpl( 
      apiService: getIt.get<ApiService>(),
    ),
  );
}