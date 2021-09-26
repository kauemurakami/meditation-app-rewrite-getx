import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/utils/size.dart';
import 'package:meditation_app/core/values/strings.dart';

class SearchYogaWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.wp(50.0),
        margin: EdgeInsets.symmetric(vertical: 30.0),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(29.5)),
        child: TextField(
          decoration: InputDecoration(
              hintText: search,
              border: InputBorder.none,
              icon: SvgPicture.asset('assets/icons/search.svg')),
        ));
  }
}
