import 'package:flutter_application_17/screens/login.dart';

import 'screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users CRUD',
      initialRoute: '/',
      routes: {
        '/':(context) => const Home(),
        '/login':(context) => const Login(),
      },
    );
  }
}

