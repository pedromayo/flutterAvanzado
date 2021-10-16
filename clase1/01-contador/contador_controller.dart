import 'package:get/get.dart';

class ContadorController extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    // update();
    update(["contador2"]);
  }
}
