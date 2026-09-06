import 'dart:async';

import 'package:kelicap/kelicap.dart';

import '../../services/todo_list_service.dart';

@Component(
  selector: 'todo-list',
  styleUrls: ['todo_list.css'],
  templateUrl: 'todo_list.html',
  directives: [NgFor, NgIf],
  providers: [ClassProvider(TodoListService)],
)
class TodoListComponent implements OnInit {
  final TodoListService todoListService; // = TodoListService();

  List<String> items = [];
  String newTodo = '';

  TodoListComponent(this.todoListService);

  @override
  Future<void> ngOnInit() async {
    items = await todoListService.getTodoList();
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
  }

  String remove(int index) => items.removeAt(index);
}
