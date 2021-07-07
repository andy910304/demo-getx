import 'dart:convert';

import 'package:demo_getx/models/user.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  //Convirtiendo UserApi en SINGLETON
  UsersApi._internal(); //Contructor privado
  static UsersApi _instance = UsersApi._internal();
  static UsersApi get instance => _instance;

  final _dio = Dio();

  Future<List<User>> getUsers(int page) async {
    final response =
        await http.get(Uri.parse("https://reqres.in/api/users?delay=3"));

    List<User> users = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        users.add(User(
            id: item["id"],
            email: item["email"],
            firstname: item["first_name"],
            lastname: item["last_name"],
            avatar: item["avatar"]));
      }
      print(users);
      return users;
    } else {
      throw Exception("Fallo la conexion");
    }
  }
}
