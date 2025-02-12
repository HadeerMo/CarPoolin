import 'package:car_pooling/core/models/carpoolin_model.dart';
import 'package:car_pooling/features/confirmation_page/presentation/pages/confirmation_page.dart';
import 'package:car_pooling/features/driver_profile/presentation/pages/drive_profile_page.dart';
import 'package:car_pooling/features/home%20page/presentation/pages/home_page.dart';
import 'package:car_pooling/features/login_page/presentation/pages/login_page.dart';
import 'package:car_pooling/features/search_page/presentation/pages/car_booking_page.dart';
import 'package:car_pooling/features/search_page/presentation/pages/search_page.dart';
import 'package:car_pooling/features/welcome_page/presentation/pages/welcome_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const loginPath = '/login';
  static const homePath = '/home';
  static const searchPagePath = '/search';
  static const carBookingPagePath = '/carBooking';
  static const confirmationPagePath = '/confirmation';
  static const driveProfilePagePath = '/driveProfile';
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
      GoRoute(
        path: carBookingPagePath,
        builder: (context, state) => CarBookingPage(
          carpoolinModel: state.extra as CarpoolinModel,
        ),
      ),
      GoRoute(
        path: confirmationPagePath,
        builder: (context, state) => const ConfirmationPage(),
      ),
      GoRoute(
        path: driveProfilePagePath,
        builder: (context, state) => DriveProfilePage(
          carpoolinModel: state.extra as CarpoolinModel,
        ),
      ),
    ],
  );
}
