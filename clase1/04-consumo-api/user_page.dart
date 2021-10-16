import 'package:avanzado_lecciones/clase1/04-consumo-api/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
        init: UserController(),
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Usuarios Getx"),
                actions: [
                  Icon(Icons.favorite, color: Colors.white),
                  GetBuilder<UserController>(
                      id: "contador",
                      builder: (__) {
                        return Text(
                          "${_.favorites.length}",
                          style: TextStyle(color: Colors.white),
                        );
                      }),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Hola Gustavo",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                  GetBuilder<UserController>(
                      id: "lista",
                      builder: (___) {
                        return _.isLoading
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: _.users.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text("${_.users[index].firstName}"),
                                    leading: GestureDetector(
                                      onTap: () {
                                        _.goDetail(user: _.users[index]);
                                      },
                                      child: CircleAvatar(
                                        child: Text("${_.users[index].id}"),
                                      ),
                                    ),
                                    trailing: GestureDetector(
                                      onTap: () {
                                        _.onfavorite(index);
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: _.users[index].isFavorite
                                            ? Colors.pink
                                            : Colors.grey,
                                      ),
                                    ),
                                  );
                                });
                      }),
                  Container(
                    color: Colors.amber,
                    height: 100.0,
                  )
                ],
              ));
        });
  }
}
