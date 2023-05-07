import 'package:flutter/material.dart';
import 'package:todo_app_tutorial/model/todo.dart';
import '../constant/colors.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteitem;
  const TodoItem({
    super.key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteitem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          print('Clicked on Todo Item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            color: tdBlack,
            fontSize: 16,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            iconSize: 18,
            icon: Icon(Icons.delete),
            color: Colors.white,
            onPressed: () {
              print('Clicked on deleted icon');
            },
          ),
        ),
      ),
    );
  }
}
