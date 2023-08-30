import 'package:desafiomaga/data/product_data.dart';
import 'package:desafiomaga/model/model_theme.dart';
import 'package:desafiomaga/model/product.dart';
import 'package:desafiomaga/screens/main_drawer.dart';
import 'package:desafiomaga/screens/tarefa3-details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tarefa3 extends StatelessWidget {
  const Tarefa3({super.key});

  @override
  Widget build(BuildContext context) {
    final produtosArray = products;
    return Consumer<ModelTheme>(
      builder: (context, ModelTheme themeNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tarefa 3",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.nightlight_round
                    : Icons.wb_sunny),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                },
              ),
            ],
          ),
          drawer: MainDrawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              const Text(
                "Esses são alguns itens que escolhi aleatoriamente da minha infância, que me trazem boas memórias e decidi os colocar com o ListView.builder",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
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
                          child: Card(
                              margin: const EdgeInsets.all(16),
                              child: Image.asset(
                                produtosArray[index].image,
                                width: 175,
                                height: 175,
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          produtosArray[index].name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
