import 'package:avanzado_lecciones/clase1/models/user_model.dart';
import 'package:get/get.dart';

class DetailUserController extends GetxController {
  //PROPIEDADES Q RECIBE - fijate q esta instanciado
  UserModel user = UserModel();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _loadInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadInit() {
    user = Get.arguments as UserModel;
  }
}
