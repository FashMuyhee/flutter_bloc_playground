import 'package:bloc_playground/pages/home_page.dart';
import 'package:bloc_playground/pages/todo/todo_list_page.dart';
import 'package:flutter/material.dart';

import 'pages/counter/bloc_page.dart';
import 'pages/counter/cubit_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/cubit_counter': (context) => const CubitCounterPage(),
        '/bloc_counter': (context) => const BlocCounterPage(),
        '/todo': (context) => const TodoListPage(),
      },
    );
  }
}
