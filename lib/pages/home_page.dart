import 'package:demo_getx/controllers/global_controller.dart';
import 'package:demo_getx/controllers/home_controller.dart';
import 'package:demo_getx/pages/widgets_home_page/home_list.dart';
import 'package:demo_getx/widgets/products_list.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'text',
        init: HomeController(),
        builder: (_) {
          print("building home page");
          return Scaffold(
            appBar: AppBar(
              actions: [
                GetBuilder<GlobalController>(
                    id: 'favorite',
                    builder: (_) => TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(88, 44),
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0)),
                            ),
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: Text("Favoritos(${_.favorite.length})"),
                        ))
              ],
            ),
            body: ProductList(),
            //body: HomeList(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _.increment();
              },
              child: Icon(Icons.add),
            ),
          );
        });
  }
}
