import 'package:bloc_playground/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounterPage extends StatefulWidget {
  const CubitCounterPage({super.key});

  @override
  _CubitCounterPageState createState() => _CubitCounterPageState();
}

class _CubitCounterPageState extends State<CubitCounterPage> {
  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Counter'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          bloc: counterCubit,
          builder: (context, state) {
            return Text('Counter is $state');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counterCubit.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: counterCubit.decrement,
            child: const Icon(Icons.minimize),
          )
        ],
      ),
    );
  }
}
