import 'dart:async';

import 'package:demo_getx/controllers/socket_client_controller.dart';
import 'package:demo_getx/models/pet.dart';
import 'package:get/get.dart';

class ReactiveController extends GetxController {
  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;

  RxList<String> items = <String>[].obs;
  RxMap<String, dynamic> mapItems = Map<String, dynamic>().obs;

  Pet myPet = Pet(name: "Lulu", age: 1);
  late StreamSubscription<String> _subscription;

  @override
  void onInit() {
    super.onInit();
    final SocketClientController socketClientController =
        Get.find<SocketClientController>();

    _subscription = socketClientController.message.listen((data) {
      print("message:::: $data");
    });
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }

  void increment() {
    counter.value++;
    //update();
  }

  void getDate() {
    currentDate.value = DateTime.now().toString();
  }

  void addItem() {
    items.add(DateTime.now().toString());
  }

  void addMapItem() {
    var dataM = DateTime.now().toString();
    mapItems.putIfAbsent(dataM, () => dataM);
  }

  void removeMapItem(String key) {
    mapItems.remove(key);
  }

  void removeItem(int index) {
    items.removeAt(index);
  }

  void setPetAge(int age) {
    //myPet.value = myPet.value.copyWith(age: age, name: '');
    myPet.age = age;
  }
}