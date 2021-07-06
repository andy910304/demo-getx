import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  int _counter = 0;

  int get counter => _counter;

  // onInit es casi lo mismo que el initState
  @override
  void onInit() {
    super.onInit();
    print("este es el onInit");
  }

  @override
  void onReady() {
    super.onReady();
    print("este es el onReady");
  }

  void increment() {
    this._counter++;
    // el metodo update() es usado para actualizar los widgets,
    // se le pueden enviar los id por parametros
    update(['text'], _counter >= 5);
  }
}
