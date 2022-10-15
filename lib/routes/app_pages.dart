import 'package:get/get.dart';
import 'package:movies_app_phonepe/features/moviedb/presentation/screens/home_screen.dart';
import 'package:movies_app_phonepe/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME_SCREEN, page: () => HomeScreen()),
  ];
}
