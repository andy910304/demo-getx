import 'package:demo_getx/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${_.user.firstname} ${_.user.lastname}"),
              SizedBox(height: 10),
              TextField(
                onChanged: _.onInputTextChanged,
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: _.goToBackWithData,
                child: Text("Aceptar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
