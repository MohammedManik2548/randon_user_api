import 'package:get/get.dart';
import 'package:randon_user_api/controllers/my_home_page_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyHomePageController());
  }
}
