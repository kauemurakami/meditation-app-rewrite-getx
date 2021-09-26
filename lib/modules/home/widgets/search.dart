import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 30.0),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(29.5)),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              icon: SvgPicture.asset('assets/icons/search.svg')),
        ));
  }
}
