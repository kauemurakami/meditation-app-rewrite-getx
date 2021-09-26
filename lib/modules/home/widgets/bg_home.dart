import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/utils/size.dart';

class BgHomeWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.hp(45.0),
      decoration: BoxDecoration(
          color: Color(0xfff5ceb8),
          image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage('assets/images/undraw_pilates_gpdb.png'))),
    );
  }
}
