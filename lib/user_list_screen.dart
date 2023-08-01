import 'package:bloc_learning/user_list_cubit.dart';
import 'package:bloc_learning/user_list_state.dart';
import 'package:bloc_learning/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Users List"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocBuilder<UserListCubit, UserListState>(
            builder: (context, state) {
              return state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: state.userModelList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return UserCard(userModel: state.userModelList[index]);
                      });
            },
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
