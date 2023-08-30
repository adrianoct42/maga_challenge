import 'package:desafiomaga/model/model_theme.dart';
import 'package:desafiomaga/model/product.dart';
import 'package:desafiomaga/screens/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Tarefa3Details extends StatelessWidget {
  const Tarefa3Details(this.produtosArray, {super.key});

  final Product produtosArray;

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(
      builder: (context, ModelTheme themeNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tarefa 3 - Detalhes",
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
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          drawer: const MainDrawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Image.asset(
                produtosArray.image,
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 16),
              Text(
                "Nome: ${produtosArray.name}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                "Preço: R\$ ${produtosArray.price.toString()}",
                style: const TextStyle(color: Colors.green, fontSize: 16),
              ),
              const SizedBox(height: 24),
              Text("Descrição: ${produtosArray.descricao}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blueAccent)),
            ],
          ),
        );
      },
    );
  }
}
