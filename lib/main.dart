import 'package:expense_planner/user_transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titlea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New App")),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              color: Colors.black,
              child: Container(
                child: Text(
                  "Chart!",
                  style: TextStyle(color: Colors.white),
                ),
                width: double.infinity,
              ),
              elevation: 5,
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
