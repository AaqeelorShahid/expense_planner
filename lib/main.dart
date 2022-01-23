import 'package:expense_planner/transaction_list.dart';

import './new_transaction.dart';
import 'models/Transaction.dart';
import 'transaction_list.dart';
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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transcation> _userTransaction = [
    Transcation(
      id: "1",
      title: "Title",
      amount: 2.0,
      date: DateTime.now(),
    ),
    Transcation(
      id: "2",
      title: "Title 2",
      amount: 1.0,
      date: DateTime.now(),
    ),
    Transcation(
      id: "3",
      title: "Title 3",
      amount: 3.0,
      date: DateTime.now(),
    ),
    Transcation(
      id: "4",
      title: "Title 4",
      amount: 5.0,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transcation(
        title: title, amount: amount, id: "6", date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransaction(_addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New App"),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () => startAddNewTransaction(context))
          ],
        ),
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
              TransactionList(_userTransaction),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () => startAddNewTransaction(context),
        ));
  }
}
