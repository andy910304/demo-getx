import 'package:demo_getx/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) => Scaffold(
        body: Center(
          child: Text("Profile Page"),
        ),
      ),
    );
  }
}
