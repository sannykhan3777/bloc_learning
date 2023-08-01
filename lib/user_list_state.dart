import 'package:bloc_learning/user_model.dart';

class UserListState {
  final List<UserModel> userModelList;
  final bool isLoading;

  UserListState({required this.userModelList, required this.isLoading});

  factory UserListState.empty() =>
      UserListState(userModelList: [], isLoading: false);

  UserListState copyWith({List<UserModel>? userModelList, bool? isLoading}) =>
      UserListState(
          userModelList: userModelList ?? this.userModelList,
          isLoading: isLoading ?? this.isLoading);
}
