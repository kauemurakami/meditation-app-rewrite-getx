import 'package:get/get.dart';
import 'package:meditation_app/modules/home/binding.dart';
import 'package:meditation_app/modules/home/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
  ];
}
