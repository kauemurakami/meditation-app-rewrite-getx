import 'package:get/get.dart';
import 'package:meditation_app/modules/dashboard/binding.dart';
import 'package:meditation_app/modules/dashboard/page.dart';
import 'package:meditation_app/modules/exercises/binding.dart';
import 'package:meditation_app/modules/exercises/page.dart';
import 'package:meditation_app/modules/home/binding.dart';
import 'package:meditation_app/modules/home/page.dart';
import 'package:meditation_app/modules/settings/binding.dart';
import 'package:meditation_app/modules/settings/page.dart';
import 'package:meditation_app/modules/yoga/binding.dart';
import 'package:meditation_app/modules/yoga/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
            preventDuplicates: true,
            name: Routes.HOME,
            page: () => HomePage(),
            binding: HomeBinding()),
        GetPage(
            preventDuplicates: true,
            name: Routes.ALL_EXERCISES,
            page: () => ExercisesPage(),
            binding: ExercisesBinding()),
        GetPage(
            preventDuplicates: true,
            name: Routes.SETTINGS,
            page: () => SettingsPage(),
            binding: SettingsBinding()),
      ],
    ),
    GetPage(
        preventDuplicates: true,
        name: Routes.YOGA,
        page: () => YogaPage(),
        binding: YogaBinding())
  ];
}
