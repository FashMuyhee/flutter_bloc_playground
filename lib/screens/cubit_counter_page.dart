import 'package:flutter/material.dart';

class CubitCounterPage extends StatefulWidget {
  const CubitCounterPage({super.key});

  @override
  _CubitCounterPageState createState() => _CubitCounterPageState();
}

class _CubitCounterPageState extends State<CubitCounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

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
        child: Text('Counter is $_counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
