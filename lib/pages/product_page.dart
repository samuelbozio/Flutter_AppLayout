import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Color.fromARGB(255, 233, 228, 228).withOpacity(0),
              elevation: 0.0,
              expandedHeight: 700,
              floating: false, //não tá flutuando.
              pinned: true, //fixo na tela até o scroll ser realizado.
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true, //Title centralizado, no caso, uma imagem.
                background: Icon(Icons.satellite_sharp, size: 300),
              ),
            )
          ];
        },
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 5, right: 10),
              child: Text(
                "Detalhes do Produto",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
          
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                    "By Sam",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8),
                  child: Container(
                    child: Text(
                      "Uma breve descrição sobre o design, material \ne contexto de uso do produto",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
