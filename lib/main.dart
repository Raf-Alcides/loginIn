import 'package:flutter/material.dart';
import 'resources/theme_app.dart';
import 'ui/pages/login_in.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Coffer Time',
    themeMode: ThemeMode.dark,
    theme: ThemeApp.light,
    darkTheme: ThemeApp.dark,
    home: const LoginIn()
      );
  }
}



  
