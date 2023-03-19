import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/about/about_page.dart';
import 'package:getx_app/app/home/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // change MaterialApp to GetMaterialApp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/about',
          page: () => const AboutPage(),
        ),
      ],
      initialRoute: '/home',
    );
  }
}
