import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/values/strings.dart';
import 'package:meditation_app/modules/home/widgets/category_card.dart';
import 'package:meditation_app/routes/pages.dart';

class GridListWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        childAspectRatio: .85,
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: [
          CategoryCardWidget(
              image: 'assets/icons/Hamburger.svg',
              callback: () => '',
              text: diet_grid),
          CategoryCardWidget(
              image: 'assets/icons/Excrecises.svg',
              callback: () => '',
              text: kegel_grid),
          CategoryCardWidget(
              image: 'assets/icons/Meditation.svg',
              callback: () => '',
              text: meditation_grid),
          CategoryCardWidget(
              image: 'assets/icons/yoga.svg',
              callback: () => Get.toNamed(
                    Routes.YOGA,
                  ),
              text: yoga_grid),
        ],
      ),
    );
  }
}
