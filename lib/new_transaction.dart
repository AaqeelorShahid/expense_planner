import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function userTransaction;

  NewTransaction(this.userTransaction);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final title = TextEditingController();

  final amount = TextEditingController();

  void addTx() {
    final enteredTitle = title.text;
    final enteredAmount = double.parse(amount.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.userTransaction(
      enteredTitle,
      enteredAmount,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
                decoration: InputDecoration(labelText: "Title"),
                controller: title),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => addTx(),
              controller: amount,
            ),
            FlatButton(
              onPressed: addTx,
              child: Text("Submit"),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
