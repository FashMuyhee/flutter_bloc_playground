import 'package:bloc_playground/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounterPage extends StatefulWidget {
  const BlocCounterPage({super.key});

  @override
  _BlocCounterPageState createState() => _BlocCounterPageState();
}

class _BlocCounterPageState extends State<BlocCounterPage> {
  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Counter'),
        centerTitle: true,
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          bloc: counterBloc,
          builder: (context, state) {
            return Text(
              'Counter is $state',
              style: const TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterIncremented());
            },
            heroTag: 'bloc_inc',
            backgroundColor: Colors.greenAccent,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'bloc_dec',
            backgroundColor: Colors.greenAccent,
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
