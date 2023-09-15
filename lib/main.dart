import 'package:flutter/material.dart';
import 'package:layouts_1/pages/tabs_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3, child: TabsPage()),
    );
  }
}
