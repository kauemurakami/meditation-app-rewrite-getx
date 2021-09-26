import 'package:get/get.dart';
import 'package:meditation_app/modules/yoga/repository.dart';

class YogaController extends GetxController {
  final YogaRepository repository;
  YogaController(this.repository);
  @override
  void onInit() {
    print('yoga controller');
    super.onInit();
  }
}
