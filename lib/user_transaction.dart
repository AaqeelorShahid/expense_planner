import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import 'models/Transaction.dart';

class UserTransaction extends StatefulWidget {
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

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
