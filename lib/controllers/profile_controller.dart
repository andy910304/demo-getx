import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class ProfileController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("Get.arguments ${Get.arguments}");
  }
}
