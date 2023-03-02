import 'package:get/get.dart';
import 'package:konusanlar/app_routes.dart';

class HomeController extends GetxController {
  navigateCreate() {
    Get.toNamed(AppRoutes.create);
  }
}
