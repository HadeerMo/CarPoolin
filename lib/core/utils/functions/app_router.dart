import 'package:car_pooling/features/home%20page/presentation/pages/home_page.dart';
import 'package:car_pooling/features/login_page/presentation/pages/login_page.dart';
import 'package:car_pooling/features/search_page/presentation/pages/search_page.dart';
import 'package:car_pooling/features/welcome_page/presentation/pages/welcome_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const loginPath = '/login';
  static const homePath = '/home';
  static const searchPagePath = '/search';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: loginPath,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: homePath,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: searchPagePath,
        builder: (context, state) => const SearchPage(),
      ),
    ],
  );
}
