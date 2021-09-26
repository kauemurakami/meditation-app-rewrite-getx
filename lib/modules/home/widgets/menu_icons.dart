import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MenuWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        alignment: Alignment.center,
        height: 52.0,
        width: 52.0,
        decoration:
            BoxDecoration(color: Color(0xfff2bea1), shape: BoxShape.circle),
        child: SvgPicture.asset('assets/icons/menu.svg'),
      ),
    );
  }
}
