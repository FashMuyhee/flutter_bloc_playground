import 'package:flutter_bloc/flutter_bloc.dart';
import '/model/todo.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    final todo = Todo(title: title, createdAt: DateTime.now());

    final todos = [...state];
    todos.add(todo);
    emit(todos);
  }
}
