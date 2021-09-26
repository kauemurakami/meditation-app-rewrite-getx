import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/modules/settings/controller.dart';

class SettingsPage extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SettingsPage')),
        body: SafeArea(child: Text('SettingsController')));
  }
}
