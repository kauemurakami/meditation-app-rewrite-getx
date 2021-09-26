import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Text('Good Mornign Shishir',
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(fontWeight: FontWeight.w900));
  }
}
