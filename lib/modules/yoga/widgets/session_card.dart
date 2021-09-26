import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/values/colors.dart';

class SessionCardWidget extends Container {
  final sessionN, isDone;
  SessionCardWidget({this.isDone = false, this.sessionN});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, __) => Container(
        width: __.maxWidth / 2 - 10,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23.0,
                spreadRadius: -13,
                color: kShadowColor)
          ],
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 42.0,
              width: 42.0,
              decoration: BoxDecoration(
                  color: this.isDone ? kBlueColor : Colors.white,
                  border: Border.all(color: kBlueColor),
                  shape: BoxShape.circle),
              child: Icon(Icons.play_arrow,
                  color: this.isDone ? Colors.white : kBlueColor),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Session $sessionN',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}
