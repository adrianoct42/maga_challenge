import 'package:desafiomaga/data/task_data.dart';
import 'package:desafiomaga/model/model_theme.dart';
import 'package:desafiomaga/model/task.dart';
import 'package:desafiomaga/screens/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tarefa1 extends StatefulWidget {
  const Tarefa1({super.key});

  @override
  State<Tarefa1> createState() => _Tarefa1State();
}

class _Tarefa1State extends State<Tarefa1> {
  final listaTask = tasklist;

  @override
  Widget build(BuildContext context) {
    return Consumer<ModelTheme>(
      builder: (context, ModelTheme themeNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tarefa 1",
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
          body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    child: Card(
                      color: listaTask[index].completed == true
                          ? Colors.greenAccent
                          : Colors.redAccent,
                      margin: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text(listaTask[index].title),
                          const SizedBox(height: 8),
                          Text(listaTask[index].description),
                          const SizedBox(height: 8),
                          Text(
                              "Status da Tarefa: ${listaTask[index].completed == true ? "Completa!" : "Incompleta!"}"),
                        ],
                      ),
                    ),
                    onTap: () {
                      if (listaTask[index].completed == true) {
                        setState(() {
                          listaTask[index].completed = false;
                        });
                      } else {
                        setState(() {
                          listaTask[index].completed = true;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 8),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
