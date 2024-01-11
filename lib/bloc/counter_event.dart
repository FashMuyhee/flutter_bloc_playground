
part of 'counter_bloc.dart';

// BLOC EVENT
sealed class CounterEvent {}

class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}
