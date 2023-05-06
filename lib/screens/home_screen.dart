// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app_tutorial/constant/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: 30,
            color: tdBlack,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 40,
              width: 40,
              color: Colors.grey,
              child: Icon(Icons.person),
            ),
          )
        ],
      ),
    );
  }
}

//  Container(
//               height: 40,
//               width: 40,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Icon(Icons.add),
//               ),
//             ),
