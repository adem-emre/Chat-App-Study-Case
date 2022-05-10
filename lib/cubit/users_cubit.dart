import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/user_model.dart';
import '../service/user_service.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this._userService) : super(UsersInitial()){
    getUsers(20);
  }
  final UserService _userService;

  Future<void> getUsers(int count) async {
    emit(UsersLoading());
    try {
      final users = await _userService.getUsers(count);
      if (users != null) {
        emit(UsersLoaded(users));
      } else {
        emit(const UsersError('Failed to load users'));
      }
    } catch (e) {
      emit(UsersError(e.toString()));
    }
  }
}
