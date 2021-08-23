import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required this.transaction,
    @required this.deleteTransaction,
  }) : super(key: key);

  final Transaction transaction;
  final Function deleteTransaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2,
            )),
            padding: EdgeInsets.all(10),
            child: Text(
              '\$${transaction.amount.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(transaction.title,
                    style: Theme.of(context).textTheme.headline6
                    // style: TextStyle(
                    //   fontSize: 17,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    ),
                Text(
                  DateFormat('dd/MM/yy').format(transaction.date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          MediaQuery.of(context).size.width > 360
              ? TextButton.icon(
                  onPressed: () => deleteTransaction(transaction.id),
                  icon: Icon(Icons.delete),
                  label: Text('Delete'),
                )
              : IconButton(
                  padding: EdgeInsets.only(right: 25),
                  onPressed: () => deleteTransaction(transaction.id),
                  icon: Icon(
                    Icons.delete,
                  ),
                  color: Theme.of(context).errorColor,
                ),
        ],
      ),
    );
  }
}
