import 'package:demo_getx/controllers/home_controller.dart';
import 'package:demo_getx/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'users',
        builder: (_) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final User user = _.users[index];
              return ListTile(
                title: Text(user.firstname),
                subtitle: Text(user.email),
                onTap: () => _.showUserProfile(user),
              );
            },
            itemCount: _.users.length,
          );
        });
  }
}
