import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 5, left: 4, right: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () => addNewTransaction(
                titleController.text,
                double.parse(amountController.text),
              ),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
