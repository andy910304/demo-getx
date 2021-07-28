import 'package:demo_getx/controllers/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<GlobalController>();
    return ListView.builder(
      itemBuilder: null,
      itemCount: 10,
    );
  }
}
