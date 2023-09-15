

import 'package:flutter/material.dart';
import 'package:layouts_1/pages/product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          color: const Color.fromARGB(255, 243, 245, 246),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              search(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Categories",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                child: categoryList(),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Best selling",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {},
                    child: const Text("See All"),
                  ),
                ],
              ),
              SizedBox(height: 350, child: productList(context))
            ],
          ),
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(128)),
    height: 60,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16, bottom: 6),
          child: Icon(
            Icons.search,
            size: 23,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6, bottom: 6),
          child: SizedBox(
            width: 200,
            child: TextFormField(
              decoration: const InputDecoration(
                  labelText: "Search...",
                  border: InputBorder.none,
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400)),
            ),
          ),
        )
      ],
    ),
  );
}

Widget categoryList() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem(),
      categoryItem()
    ],
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 2),
            blurRadius: 5,
            spreadRadius: 2)
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: const Icon(Icons.category),
  );
}

Widget productList(BuildContext context) {
  return Container(
    color: const Color.fromARGB(255, 242, 241, 239),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        productCard(context),
        productCard(context),
        productCard(context),
      ],
    ),
  );
}

Widget productCard(BuildContext context) {
  return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProductPage()));
            },
            child: const Center(
              child: Icon(
                Icons.sell,
                size: 100,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Nome do Produto",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Marca",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "\$ 00,00",
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 217, 39),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ));
}
