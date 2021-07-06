import 'package:demo_getx/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLabel extends StatelessWidget {
  const HomeLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'text',
      builder: (_) {
        return Text(_.counter.toString());
      },
    );
  }
}
