import 'package:demo_getx/controllers/reactive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
        init: ReactiveController(),
        builder: (_) {
          //print("REACTIVE");
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text("age ${_.myPet.value.age}"),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                    onPressed: () {
                      _.setPetAge(_.myPet.value.age + 1);
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
