import 'package:get/get.dart';
import 'package:meditation_app/data/provider/api.dart';
import 'package:meditation_app/modules/home/controller.dart';
import 'package:meditation_app/modules/home/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
