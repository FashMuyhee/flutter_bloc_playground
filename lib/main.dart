import 'package:bloc_playground/pages/cubit_counter_page.dart';
import 'package:bloc_playground/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/cubit_counter': (contenxt) => const CubitCounterPage(),
      },
    );
  }
}
