import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
              Container(
                height: 90,
                child: CategoryList(),
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
                    child: Text("See All"),
                  ),
                ],
              ),
              Container(height: 450, child: productList())
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
          child: Container(
              width: 200,
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Search...",
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              )),
        )
      ],
    ),
  );
}

Widget CategoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CategoryItem(),
        CategoryItem(),
        CategoryItem(),
        CategoryItem(),
        CategoryItem(),
        CategoryItem(),
        CategoryItem(),
        CategoryItem(),
        CategoryItem()
      ],
    ),
  );
}

Widget CategoryItem() {
  return Container(
    width: 70,
    height: 70,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
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
    child: const Icon(Icons.insert_emoticon),
  );
}

Widget productList() {
  return Container(
    color: Color.fromARGB(255, 242, 241, 239),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [productCard(), productCard(), productCard()],
    ),
  );
}

Widget productCard() {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Center(
      child: Icon(Icons.sell, size: 100,),
    ),
  );
}
