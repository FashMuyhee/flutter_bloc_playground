import 'package:bloc_playground/cubit/todo/todo_cubit.dart';
import 'package:bloc_playground/model/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo '),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, todos) {
          return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: todos.length,
              itemBuilder: (ctx, index) {
                final Todo todo = todos[index];

                return Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    title: Text(todo.title),
                    tileColor: const Color.fromARGB(179, 211, 210, 210),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/add_todo'),
        heroTag: 'add_todo',
        backgroundColor: Colors.blue[400],
        child: const Icon(Icons.add),
      ),
    );
  }
}
