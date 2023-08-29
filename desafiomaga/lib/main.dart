import 'package:desafiomaga/data/task_data.dart';
import 'package:desafiomaga/screens/tarefa1.dart';
import 'package:desafiomaga/screens/tarefa2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme1 = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(199, 206, 194, 194),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

final theme2 = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(199, 133, 56, 163),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme2,
      home: const Tarefa2(),
    );
  }
}
