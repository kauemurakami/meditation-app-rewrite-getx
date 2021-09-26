import 'package:get/get.dart';
import 'package:meditation_app/data/provider/api.dart';
import 'package:meditation_app/modules/dashboard/controller.dart';
import 'package:meditation_app/modules/dashboard/repository.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
        () => DashboardController(DashboardRepository(MyApi())));
  }
}
