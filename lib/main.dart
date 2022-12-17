import 'package:callcenter_itbank/pages/intro.dart';
import 'package:callcenter_itbank/chat/chat.dart';
import 'package:callcenter_itbank/pages/intro.dart';
import 'package:callcenter_itbank/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'api/chat_manager.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<ChatManager>(ChatManager());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Intro(),
      ),
    );
  }
}
