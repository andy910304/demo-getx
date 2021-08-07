import 'package:demo_getx/controllers/reactive_controller.dart';
import 'package:demo_getx/controllers/socket_client_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final socketController = Get.find<SocketClientController>();
    return GetBuilder<ReactiveController>(
        init: ReactiveController(),
        builder: (_) {
          //print("REACTIVE");
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Obx(
                //   () => Text("age ${_.myPet.age}"),
                // ),
                Obx(
                  () => Text(socketController.message.value),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                    onPressed: () {
                      _.setPetAge(_.myPet.age + 1);
                    },
                    child: Text("set age"))
              ],
            ),
            // Center(
            //   child: Obx(
            //     () => ListView(
            //       children: _.mapItems.values
            //           .map((e) => ListTile(
            //                 title: Text(e),
            //                 trailing: IconButton(
            //                   onPressed: () => _.removeMapItem(e),
            //                   icon: Icon(Icons.delete),
            //                 ),
            //               ))
            //           .toList(),
            //     ),
            //   ),
            // ),
            // floatingActionButton: FloatingActionButton(
            //   child: Icon(Icons.add),
            //   onPressed: () {
            //     //_.increment();
            //     //_.addItem();
            //     _.addMapItem();
            //   },
            // ),
          );
        });
  }
}
