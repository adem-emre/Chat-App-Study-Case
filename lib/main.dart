import 'package:flutter/material.dart';
import 'package:study_case/screens/chat/chat_view.dart';
import 'package:study_case/screens/get_started/get_started_view.dart';
import 'package:study_case/screens/home/home_view.dart';
import 'screens/messages/messages_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  GetStartedView(),
    );
  }
}

