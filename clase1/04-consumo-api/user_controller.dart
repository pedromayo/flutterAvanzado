import 'package:avanzado_lecciones/clase1/05-pasar_datos/detail_user_page.dart';
import 'package:avanzado_lecciones/clase1/models/user_model.dart';
import 'package:avanzado_lecciones/clase1/providers/user_provider.dart';
import 'package:flutter/semantics.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  //MARK:- PROPIEDADES
  final userProvider = UserProvider();
  List<UserModel> users = [];
  bool isLoading = false;

  Map<String, UserModel> favorites = {};

  //MARK:- CICLO DE VIDA
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    //Llamada al servicio
    _loadUser();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //MARK:- FUNCIONES
  /*_loadUser() {
    userProvider.getUsers(page: 1);
  }*/

  _loadUser() async {
    users = await userProvider.getUsers(page: 1);
    print("${users.length}");
    isLoading = false;
    update(["lista"]);
  }

  onfavorite(int index) {
    final user = users[index];
    user.isFavorite = user.isFavorite ? false : true;
    if (user.isFavorite) {
      favorites[user.firstName] = user;
    } else {
      favorites.remove(user.firstName); //aunq deberia ser id,pero bueno
    }

    //update(["contador"]);
    update(["contador", "lista"]);
  }

  goDetail({required UserModel user}) {
    Get.to(() => DetailUserPage(), arguments: user);
  }
}
