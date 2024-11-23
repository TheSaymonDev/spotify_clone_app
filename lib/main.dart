import 'package:flutter/material.dart';
import 'package:spotify_clone_app/my_app.dart';
import 'package:spotify_clone_app/routes/app_routes.dart';
import 'package:spotify_clone_app/services/shared_preference_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService().init(); // Initialize SharedPreferences
  runApp(MyApp(initialRoute: AppRoutes.getStartedScreen));
}
