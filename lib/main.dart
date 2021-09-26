import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meditation_app/core/theme/app_theme.dart';
import 'package:meditation_app/core/utils/size.dart';
import 'package:meditation_app/data/provider/api.dart';
import 'package:meditation_app/modules/home/controller.dart';
import 'package:meditation_app/modules/home/repository.dart';
import 'package:meditation_app/routes/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.bottom, SystemUiOverlay.top]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp.router(
      title: "Application",
      theme: CustomTheme.getTheme(context),
      initialBinding: BindingsBuilder(
        () {
          Get.put(HomeController(HomeRepository(MyApi())));
        },
      ),
      getPages: AppPages.pages,
      routeInformationParser: GetInformationParser(
        initialRoute: Routes.HOME,
      ),
      // routerDelegate: GetDelegate(
      //   backButtonPopMode: PopMode.History,
      //   preventDuplicateHandlingMode:
      //       PreventDuplicateHandlingMode.ReorderRoutes,
      // ),
    );
  }
}
