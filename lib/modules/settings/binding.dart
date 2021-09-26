import 'package:get/get.dart';
import 'package:meditation_app/data/provider/api.dart';
import 'package:meditation_app/modules/settings/controller.dart';
import 'package:meditation_app/modules/settings/repository.dart';

class SettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(
        () => SettingsController(SettingsRepository(MyApi())));
  }
}
