import 'package:fetch_user_task/cubit/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fetch_user_task/model/user_model.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersCubit, List<Users>>(
      builder: (context, users) {
        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              title: Text(user.name ?? 'Unknown Name'),
              subtitle: Text(user.email ?? 'Unknown Email'),
            );
          },
        );
      },
    );
  }
}
