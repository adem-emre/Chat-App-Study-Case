import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/chat_cubit.dart';
import 'cubit/users_cubit.dart';
import 'screens/get_started/get_started_view.dart';
import 'service/user_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UsersCubit(UserService()),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Study Case',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: 
         const GetStartedView(),
      ),
    );
  }
}
