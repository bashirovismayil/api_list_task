import 'package:dio/dio.dart';
import 'package:fetch_user_task/model/user_model.dart';
import 'package:fetch_user_task/services/endpoints.dart';

class UsersServices {
  Future<List<Users>> fetchUsers() async {
    try {
      final dio = Dio();

      final response = await dio.get(Endpoints.users);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((item) => Users.fromJson(item)).toList();
      } else {
        throw Exception("Failed to fetch users: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception("Failed to fetch users: $error");
    }
  }
}
