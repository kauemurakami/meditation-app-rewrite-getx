import 'package:get/get.dart';
import 'package:meditation_app/data/provider/api.dart';
import 'package:meditation_app/modules/exercises/controller.dart';
import 'package:meditation_app/modules/exercises/repository.dart';

class ExercisesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExercisesController>(
        () => ExercisesController(ExercisesRepository(MyApi())));
  }
}
