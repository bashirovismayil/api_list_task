import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fetch_user_task/cubit/users_cubit.dart';
import 'package:fetch_user_task/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit()..fetchUsers(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fetch User Task',
        home: HomePage(),
      ),
    );
  }
}
