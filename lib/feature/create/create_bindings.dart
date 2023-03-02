import 'package:get/get.dart';
import 'package:konusanlar/feature/create/create_controller.dart';

class CreateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateController());
  }
}
