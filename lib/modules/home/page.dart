import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/utils/size.dart';
import 'package:meditation_app/modules/home/controller.dart';
import 'package:meditation_app/modules/home/widgets/category_card.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: SizeConfig.hp(45.0),
          decoration: BoxDecoration(
              color: Color(0xfff5ceb8),
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png'))),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52.0,
                    width: 52.0,
                    decoration: BoxDecoration(
                        color: Color(0xfff2bea1), shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ),
                Text('Good Mornign Shishir',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.w900)),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 30.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          icon: SvgPicture.asset('assets/icons/search.svg')),
                    )),
                Expanded(
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
                          image: 'assets/icons/yoga.svg',
                          callback: () => '',
                          text: 'Yoga'),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
