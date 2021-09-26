import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/values/colors.dart';

class CategoryCardWidget extends Container {
  final image, text, callback;
  CategoryCardWidget({this.image, this.callback, this.text});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17.0,
                spreadRadius: -23.0,
                color: kShadowColor)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => '',
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(this.image),
                  Spacer(),
                  Text(
                    this.text,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 15.0,
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
