import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/modules/dashboard/controller.dart';
import 'package:meditation_app/modules/dashboard/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/modules/dashboard/widgets/bottom_nav_item.dart';
import 'package:meditation_app/routes/pages.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        //This router outlet handles the appbar and the bottom navigation bar
        final currentLocation = currentRoute?.location;
        var currentIndex = 0;
        if (currentLocation?.startsWith(Routes.ALL_EXERCISES) == true) {
          currentIndex = 2;
        }
        if (currentLocation?.startsWith(Routes.SETTINGS) == true) {
          currentIndex = 1;
        }
        return Scaffold(
            body: GetRouterOutlet(
              initialRoute: Routes.HOME,
              // anchorRoute: Routes.HOME,
              key: Get.nestedKey(Routes.DASHBOARD),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                switch (value) {
                  case 0:
                    delegate.toNamed(Routes.HOME);
                    break;
                  case 1:
                    delegate.toNamed(Routes.ALL_EXERCISES);
                    break;
                  case 2:
                    delegate.toNamed(Routes.SETTINGS);
                    break;
                  default:
                }
              },
              items: [
                // _Paths.HOME + [Empty]
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                // _Paths.HOME + Routes.PROFILE
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded),
                  label: 'Profile',
                ),
                // _Paths.HOME + _Paths.PRODUCTS
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded),
                  label: 'Products',
                ),
              ],
            ));
      },
    );
  }
}
