import 'package:get/get.dart';
import 'package:meditation_app/data/provider/api.dart';
import 'package:meditation_app/modules/yoga/controller.dart';
import 'package:meditation_app/modules/yoga/repository.dart';

class YogaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YogaController>(() => YogaController(YogaRepository(MyApi())));
  }
}
