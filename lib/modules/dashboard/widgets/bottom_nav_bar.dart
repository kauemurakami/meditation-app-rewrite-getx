import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/modules/dashboard/widgets/bottom_nav_item.dart';

class BottomNavBarWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: Colors.white,
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItemWidget(),
          BottomNavItemWidget(),
          BottomNavItemWidget(),
        ],
      ),
    );
  }
}
