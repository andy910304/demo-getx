import 'package:demo_getx/pages/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(HomePage(), transition: Transition.zoom);
    });
  }

  @override
  void onClose() {
    print('Este es el onClose');
    super.onClose();
  }
}
