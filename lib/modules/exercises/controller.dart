import 'package:get/get.dart';
import 'package:meditation_app/modules/exercises/repository.dart';

class ExercisesController extends GetxController {
  final ExercisesRepository repository;
  ExercisesController(this.repository);
}
