import 'package:avanzado_lecciones/clase1/01-contador/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//MARK:- OTRA CLASE

class ContadorPage extends StatelessWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final obj = new ContadorController();

    return GetBuilder<ContadorController>(
        init: ContadorController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Contador getx."),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    'Contador 1 : ${_.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  GetBuilder<ContadorController>(
                      id: "contador2",
                      builder: (__) {
                        return Text(
                          '${_.counter}',
                          style: Theme.of(context).textTheme.headline4,
                        );
                      }),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _.increment,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        });
  }
}
