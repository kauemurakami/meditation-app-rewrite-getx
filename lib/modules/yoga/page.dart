import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/utils/size.dart';
import 'package:meditation_app/core/values/colors.dart';
import 'package:meditation_app/core/values/strings.dart';
import 'package:meditation_app/modules/yoga/controller.dart';
import 'package:meditation_app/modules/yoga/widgets/search_yoga.dart';
import 'package:meditation_app/modules/yoga/widgets/session_card.dart';

class YogaPage extends GetView<YogaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: SizeConfig.hp(50.0),
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
                    width: SizeConfig.wp(60.0), child: Text(fundaments_yoga)),
                SizedBox(width: SizeConfig.wp(50.0), child: SearchYogaWidget()),
                Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    SessionCardWidget(
                      isDone: true,
                      seassionNum: 01,
                    ),
                    SessionCardWidget(
                      isDone: true,
                      seassionNum: 02,
                    ),
                    SessionCardWidget(
                      isDone: true,
                      seassionNum: 03,
                    ),
                    SessionCardWidget(
                      isDone: true,
                      seassionNum: 04,
                    ),
                    SessionCardWidget(
                      isDone: true,
                      seassionNum: 05,
                    ),
                    SessionCardWidget(
                      isDone: true,
                      seassionNum: 06,
                    ),
                  ],
                ),
                Text(
                  meditation_grid,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.all(10.0),
                  height: 90.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: -13,
                            color: kShadowColor)
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          'assets/icons/Meditation_women_small.svg'),
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            'Basic 2',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ))
                    ],
                  ),
                )
              ])),
        )
      ],
    ));
  }
}
