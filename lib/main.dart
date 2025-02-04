import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:car_pooling/core/utils/functions/service_locator.dart';
import 'package:car_pooling/features/search_page/data/repositories/search_result_repo_impl.dart';
import 'package:car_pooling/features/search_page/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const CarPooling());
}

class CarPooling extends StatelessWidget {
  const CarPooling({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchCubit(
            getIt.get<SearchResultRepoImpl>(),
          )..fetchSearchResult(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Car Pooling',
        theme: ThemeData(
          fontFamily: 'BeVietnamPro',
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
