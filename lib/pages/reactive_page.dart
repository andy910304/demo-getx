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
          print("REACTIVE");
          return Scaffold(
            body: Center(
              child: Obx(() => ListView.builder(
                    itemBuilder: (__, index) {
                      final String text = _.items[index];
                      return ListTile(
                        title: Text(text),
                        trailing: IconButton(
                          onPressed: () {
                            _.removeItem(index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      );
                    },
                    itemCount: _.items.length,
                  )),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                //_.increment();
                _.addItem();
              },
            ),
          );
        });
  }
}
