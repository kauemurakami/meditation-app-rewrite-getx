import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/values/colors.dart';

class BottomNavItemWidget extends Container {
  final image, title, isActive, callback;
  BottomNavItemWidget({this.image, this.title, this.isActive, this.callback});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.callback(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            this.image,
            color: this.isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            this.title,
            style:
                TextStyle(color: this.isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
