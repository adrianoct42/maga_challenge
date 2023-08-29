import 'package:desafiomaga/screens/tarefa1.dart';
import 'package:desafiomaga/screens/tarefa2.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text("Navegação das Atividades"),
          ),
          ListTile(
            leading: const Icon(Icons.task, size: 16),
            title: const Text("Tarefa 1"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Tarefa1()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.task, size: 16),
            title: const Text("Tarefa 2"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Tarefa2()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.task, size: 16),
            title: const Text("Tarefa 3"),
          ),
          ListTile(
            leading: const Icon(Icons.task, size: 16),
            title: const Text("Tarefa 4"),
          ),
          ListTile(
            leading: const Icon(Icons.task, size: 16),
            title: const Text("Tarefa 5"),
          ),
        ],
      ),
    );
  }
}
