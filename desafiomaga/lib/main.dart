import 'package:desafiomaga/data/task_data.dart';
import 'package:desafiomaga/model/model_theme.dart';
import 'package:desafiomaga/screens/tarefa1.dart';
import 'package:desafiomaga/screens/tarefa2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:desafiomaga/data/mytheme_preference.dart';
import 'package:provider/provider.dart';

/* final theme1 = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: Colors.green,
  primarySwatch: Colors.indigo,
  textTheme: GoogleFonts.latoTextTheme(),
);

final theme2 = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(199, 133, 56, 163),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
); */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
        return MaterialApp(
          theme: themeNotifier.isDark
              ? ThemeData(
                  brightness: Brightness.dark,
                )
              : ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.green,
                  primarySwatch: Colors.green),
          debugShowCheckedModeBanner: false,
          home: const Tarefa1(),
        );
      }),
    );
  }
}
