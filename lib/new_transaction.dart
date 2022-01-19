import 'package:expense_planner/user_transaction.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final title = TextEditingController();
  final amount = TextEditingController();
  final Function userTransaction;

  NewTransaction(this.userTransaction);

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
              controller: amount,
            ),
            FlatButton(
              onPressed: () {
                userTransaction(title.text, double.parse(amount.text));
              },
              child: Text("Submit"),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
