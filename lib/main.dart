import 'package:demo_getx/controllers/global_controller.dart';
import 'package:demo_getx/controllers/socket_client_controller.dart';
import 'package:demo_getx/pages/reactive_page.dart';
import 'package:demo_getx/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    Get.put(SocketClientController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SplashPage(),
      home: ReactivePage(),
    );
  }
}
