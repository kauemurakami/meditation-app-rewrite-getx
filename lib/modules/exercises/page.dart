import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/modules/exercises/controller.dart';

class ExercisesPage extends GetView<ExercisesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ExercisesPage')),
        body: SafeArea(child: Text('ExercisesController')));
  }
}
