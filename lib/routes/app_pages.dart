import 'package:get/get.dart';
import 'package:spotify_clone_app/routes/app_routes.dart';
import 'package:spotify_clone_app/screens/auth_screen/auth_screen.dart';
import 'package:spotify_clone_app/screens/choose_mode_screen/choose_mode_screen.dart';
import 'package:spotify_clone_app/screens/get_started_screen/get_started_screen.dart';
import 'package:spotify_clone_app/screens/sign_in_screen/sign_in_screen.dart';
import 'package:spotify_clone_app/screens/sign_up_screen/sign_up_screen.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.getStartedScreen, page: () => GetStartedScreen()),
    GetPage(name: AppRoutes.chooseModeScreen, page: () => ChooseModeScreen()),
    GetPage(name: AppRoutes.authScreen, page: () => AuthScreen()),
    GetPage(name: AppRoutes.signInScreen, page: () => SignInScreen()),
    GetPage(name: AppRoutes.signUpScreen, page: () => SignUpScreen())
  ];
}
