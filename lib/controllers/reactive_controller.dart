import 'package:get/get.dart';

class ReactiveController extends GetxController {
  RxInt counter = 0.obs;
  RxString currentDate = ''.obs;

  RxList<String> items = <String>[].obs;
  RxMap<String, dynamic> mapItems = Map<String, dynamic>().obs;

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
}
