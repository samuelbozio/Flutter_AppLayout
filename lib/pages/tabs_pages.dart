import 'package:flutter/material.dart';
import 'package:layouts_1/pages/card_page.dart';
import 'package:layouts_1/pages/home_page.dart';
import 'package:layouts_1/pages/login_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TabBarView(
        children: [
          HomePage(),
          CardPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: TabBar(tabs: [
        Tab(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.shopping_cart_sharp,
            color: Colors.black,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.perm_identity,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
