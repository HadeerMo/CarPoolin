import 'package:car_pooling/core/utils/functions/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarPooling());
}

class CarPooling extends StatelessWidget {
  const CarPooling({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Car Pooling',
      theme: ThemeData(
        fontFamily: 'BeVietnamPro',
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
