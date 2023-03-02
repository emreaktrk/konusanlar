import 'package:get/get.dart';
import 'package:konusanlar/feature/create/create_bindings.dart';
import 'package:konusanlar/feature/create/create_page.dart';
import 'package:konusanlar/feature/home/home_bindings.dart';
import 'package:konusanlar/feature/home/home_page.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AppRoutes.create,
      page: () => CreatePage(),
      binding: CreateBindings(),
    ),
  ];
}
