import 'package:demo_getx/api/users_api.dart';
import 'package:demo_getx/models/user.dart';
import 'package:demo_getx/pages/profile_page.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];

  int get counter => _counter;
  List<User> get users => _users;

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
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersApi.instance.getUsers(1);
    this._users = data;
    update(['users']);
  }

  void increment() {
    this._counter++;
    // el metodo update() es usado para actualizar los widgets,
    // se le pueden enviar los id por parametros
    update(['text'], _counter >= 5);
  }

  Future<void> showUserProfile(User user) async {
    final result = await Get.to<String>(
      ProfilePage(),
      arguments: user,
    );
    if (result != null) {
      print("result $result");
    }
  }
}
