import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/home_screen.dart';
import 'package:state_management_getx/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management using GetX ',
      //locale: Locale('en','US'),
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: const HomeScreen(),
    );
  }
}

