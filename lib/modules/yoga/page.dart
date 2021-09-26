import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/utils/size.dart';
import 'package:meditation_app/core/values/colors.dart';
import 'package:meditation_app/core/values/strings.dart';
import 'package:meditation_app/modules/yoga/controller.dart';

class YogaPage extends GetView<YogaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: SizeConfig.hp(45.0),
          decoration: BoxDecoration(
              color: kBlueColor,
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/meditation_bg.png',
                  ),
                  fit: BoxFit.fitWidth)),
        ),
        SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: [
                SizedBox(
                  height: SizeConfig.hp(5.0),
                ),
                Text(meditation_grid,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.w900)),
                SizedBox(
                  height: SizeConfig.hp(10.0),
                ),
                Text(time_course,
                    style: TextStyle(fontWeight: FontWeight.w900)),
                SizedBox(
                    height: SizeConfig.hp(6.0), child: Text(fundaments_yoga))
              ])),
        )
      ],
    ));
  }
}
