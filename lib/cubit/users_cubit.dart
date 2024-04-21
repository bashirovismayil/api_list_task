import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fetch_user_task/model/user_model.dart';
import 'package:fetch_user_task/services/users_services.dart';

class UsersCubit extends Cubit<List<Users>> {
  UsersCubit() : super([]);

  Future<void> fetchUsers() async {
    try {
      final List<Users> users = await UsersServices().fetchUsers();
      emit(users);
    } catch (e) {
      throw Exception("Failed");
    }
  }
}
