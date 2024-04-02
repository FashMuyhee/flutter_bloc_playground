import 'package:flutter/material.dart';

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
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/add_todo'),
        heroTag: 'add_todo',
        backgroundColor: Colors.blue[400],
        child: const Icon(Icons.add),
      ),
    );
  }
}
