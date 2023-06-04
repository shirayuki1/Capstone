import 'package:btms/Common/exception_handling/app_init.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'Routes/app_pages.dart';
import 'Routes/routes.dart';

void main() {
  AppInit.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: Routes.login,
      getPages: AppPages.routes,
    );
  }
}
