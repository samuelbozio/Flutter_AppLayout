import 'package:flutter/material.dart';
import 'package:layouts_1/pages/login_page.dart';
import 'package:layouts_1/pages/product_page.dart';
import 'package:layouts_1/pages/sign_up_page.dart';
import 'package:layouts_1/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
