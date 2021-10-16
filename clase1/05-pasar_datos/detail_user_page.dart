import 'package:avanzado_lecciones/clase1/05-pasar_datos/detail_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailUserPage extends StatelessWidget {
  const DetailUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailUserController>(
        init: DetailUserController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text("sdsd")),
            body: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(_.user.avatar ?? ""),
                  ),
                  Text("${_.user.firstName}")
                ],
              ),
            ),
          );
        });
  }
}
