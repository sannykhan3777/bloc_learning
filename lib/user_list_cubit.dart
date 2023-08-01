import 'package:bloc_learning/user_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc_learning/user_model.dart';

class UserListCubit extends Cubit<UserListState> {
  UserListCubit() : super(UserListState.empty());

  getUsers() async {
    emit(state.copyWith(isLoading: true));
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);
    var decodedJson = jsonDecode(response.body) as List;
    List<UserModel> usersList = decodedJson.map((e) => UserModel.fromJson(e)).toList();
    emit(state.copyWith(userModelList: usersList , isLoading: false));
  }
}
