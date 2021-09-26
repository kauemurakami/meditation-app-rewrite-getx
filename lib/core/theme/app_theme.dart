import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/values/colors.dart';

abstract class CustomTheme {
  static getTheme(ctx) {
    return ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(ctx).textTheme.apply(displayColor: kTextColor));
  }
}
