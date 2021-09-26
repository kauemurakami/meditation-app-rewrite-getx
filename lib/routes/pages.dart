import 'package:get/get.dart';
import 'package:meditation_app/modules/dashboard/binding.dart';
import 'package:meditation_app/modules/dashboard/page.dart';
import 'package:meditation_app/modules/home/binding.dart';
import 'package:meditation_app/modules/home/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.DASHBOARD,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
    GetPage(
        name: Routes.ALL_EXERCISES,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
    GetPage(
        name: Routes.SETTINGS,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
  ];
}
