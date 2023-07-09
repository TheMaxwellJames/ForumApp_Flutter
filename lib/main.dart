// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:forumapp/views/login_page.dart';
import 'views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forum App',
     
      home: LoginPage(),
    );
  }
}


