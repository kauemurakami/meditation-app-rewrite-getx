import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/utils/size.dart';
import 'package:meditation_app/modules/home/controller.dart';
import 'package:meditation_app/modules/home/widgets/bg_home.dart';
import 'package:meditation_app/modules/home/widgets/category_card.dart';
import 'package:meditation_app/modules/home/widgets/grid_list.dart';
import 'package:meditation_app/modules/home/widgets/menu_icons.dart';
import 'package:meditation_app/modules/home/widgets/search.dart';
import 'package:meditation_app/modules/home/widgets/text.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        body: Stack(
      children: [
        BgHomeWidget(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuWidget(),
                TextWidget(),
                SearchWidget(),
                GridListWidget()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
