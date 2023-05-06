// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: Icon(Icons.person),
            )
          ],
        ),
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
