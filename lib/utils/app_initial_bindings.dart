import 'package:get/get.dart';
import 'package:spotify_clone_app/localizations/language_controller.dart';
import 'package:spotify_clone_app/themes/theme_controller.dart';


class AppInitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(LanguageController());
  }
}
