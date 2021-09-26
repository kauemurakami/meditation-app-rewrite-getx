import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/values/strings.dart';

class TextWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Text(welcome,
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(fontWeight: FontWeight.w900));
  }
}
