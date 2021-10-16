import 'dart:convert';

import 'package:avanzado_lecciones/clase1/models/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  //MARK:- FUNCIONES
  Future<List<UserModel>> getUsers({
    required int page,
  }) async {
    final dio = Dio();
    //final response = await dio.get('https://reqres.in/api/users?page=1');
    final response = await dio.get('https://reqres.in/api/users',
        queryParameters: {"page": page, "delay": 5});
    print(response.data["data"]);
    return (response.data["data"] as List)
        .map((e) => UserModel.fromJson(e))
        .toList();
  }
}
