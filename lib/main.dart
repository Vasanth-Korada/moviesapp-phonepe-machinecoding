import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:movies_app_phonepe/injector.dart';
import 'package:movies_app_phonepe/routes/app_pages.dart';
import 'common/theme/app_theme.dart';
import 'features/moviedb/presentation/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie Listing App',
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      theme: movieTheme,
      home: HomeScreen(),
    );
  }
}
