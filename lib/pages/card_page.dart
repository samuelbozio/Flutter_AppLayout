import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: productList(context),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 239, 233, 233),
            width: double.infinity,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 3),
                    child: Column(
                      children: const [
                        Text(
                          "TOTAL: ",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 00,00",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 11, 226, 18)),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                    ),
                    child: const Text("Checkout"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget productList(context) {
  return ListView(
    children: [
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
    ],
  );
}

Widget productItem() {
  return Container(
    height: 120,
    margin: const EdgeInsets.all(15),
    child: Row(
      children: [
        Container(
          color: const Color.fromARGB(255, 227, 225, 225),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          child: const Icon(
            Icons.sell_outlined,
            size: 80,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 18),
              child: Text(
                "Título do Produto",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "\$ 00,00",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 28,
              width: 120,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 202, 199, 199),
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey)),
                      onPressed: () {},
                      child: const Text(
                        "+",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment.center,
                    child: const Text(
                      "1",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey)),
                      onPressed: () {},
                      child: const Text("-",
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
