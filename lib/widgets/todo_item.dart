import 'package:flutter/material.dart';
import '../constant/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

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
        leading: Icon(Icons.check_box, color: tdBlue),
        title: Text(
          'Check mail',
          style: TextStyle(
            color: tdBlack,
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
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
