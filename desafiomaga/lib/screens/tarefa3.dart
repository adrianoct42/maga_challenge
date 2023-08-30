import 'package:desafiomaga/data/product_data.dart';
import 'package:desafiomaga/model/product.dart';
import 'package:desafiomaga/screens/main_drawer.dart';
import 'package:desafiomaga/screens/tarefa3-details.dart';
import 'package:flutter/material.dart';

class Tarefa3 extends StatelessWidget {
  const Tarefa3({super.key});

  @override
  Widget build(BuildContext context) {
    final produtosArray = products;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tarefa 3",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: MainDrawer(),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Tarefa3Details(produtosArray[index])));
                },
                child: Image.asset(
                  produtosArray[index].image,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                produtosArray[index].name,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          );
        },
      ),
    );
  }
}
