import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konusanlar/app_pages.dart';
import 'package:konusanlar/app_routes.dart';

import 'color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Konuşanlar',
      themeMode: ThemeMode.system,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      getPages: AppPages.list,
      initialRoute: AppRoutes.home,
    );
  }
}
