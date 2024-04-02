import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubit/todo/todo_cubit.dart';

import 'pages/home_page.dart';
import 'pages/todo/add_todo_page.dart';
import 'pages/todo/todo_list_page.dart';
import 'pages/counter/bloc_page.dart';
import 'pages/counter/cubit_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/cubit_counter': (context) => const CubitCounterPage(),
          '/bloc_counter': (context) => const BlocCounterPage(),
          '/todo': (context) => const TodoListPage(),
          '/add_todo': (context) => const AddTodoPage(),
        },
      ),
    );
  }
}
