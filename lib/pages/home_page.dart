import 'package:bloc_playground/widgets/my_list_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Playground'),
          centerTitle: true,
          backgroundColor: Colors.purple,
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            children: [
              MyListTile(
                title: 'Cubit Counter',
                onTap: () {
                  Navigator.pushNamed(context, '/cubit_counter');
                },
              ),
              MyListTile(
                title: 'BLoC Counter',
                onTap: () {
                  Navigator.pushNamed(context, '/bloc_counter');
                },
              ),
              MyListTile(
                title: 'Cubit To do',
                onTap: () {
                  Navigator.pushNamed(context, '/todo');
                },
              )
            ],
          ),
        ));
  }
}
