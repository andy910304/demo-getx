import 'package:dio/dio.dart';

class UsersApi {
  //Convirtiendo UserApi en SINGLETON
  UsersApi._internal(); //Contructor privado
  static UsersApi _instance = UsersApi._internal();
  static UsersApi get instance => _instance;

  final _dio = Dio();

  getUsers(int page) async {
    try {
      final Response response =
          await this._dio.get('https://reqres.in/api/users', queryParameters: {
        "page": page,
      });

      var data = response.data['page'];
    } catch (e) {}
  }
}
