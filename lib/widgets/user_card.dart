import 'package:bloc_learning/user_model.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final UserModel userModel;

  const UserCard({
    super.key,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        tileColor: Colors.deepPurple,
        title: Text(userModel.name),
        leading: CircleAvatar(
          child: Text(
            userModel.name[0],
            style: const TextStyle(fontSize: 30),
          ),
        ),
        trailing: Text(userModel.id.toString()),
        subtitle: Text(userModel.email),
      ),
    );
  }
}
