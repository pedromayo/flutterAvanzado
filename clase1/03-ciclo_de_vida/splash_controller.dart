import 'package:avanzado_lecciones/clase1/01-contador/contador_page.dart';
import 'package:avanzado_lecciones/clase1/04-consumo-api/user_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //MARK:-CICLO DE VIDA
  //oninit +enter
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("init");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("ready");

    //MARK:- NAVEGACION
    Future.delayed(Duration(seconds: 2), () {
      //Get.off(() => ContadorPage());
      Get.off(() => UserPage());
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("close");
  }
}
