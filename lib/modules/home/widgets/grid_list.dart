import 'package:flutter/material.dart';
import 'package:meditation_app/modules/home/widgets/category_card.dart';

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
              text: 'Diet Recomnedation'),
          CategoryCardWidget(
              image: 'assets/icons/Excrecises.svg',
              callback: () => '',
              text: 'Kegel Exercises'),
          CategoryCardWidget(
              image: 'assets/icons/Meditation.svg',
              callback: () => '',
              text: 'Meditation'),
          CategoryCardWidget(
              image: 'assets/icons/yoga.svg', callback: () => '', text: 'Yoga'),
        ],
      ),
    );
  }
}
