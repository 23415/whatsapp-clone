import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _usertransaction = [
    Transaction(id: 't1', title: 'New Shoes', price: 300, date: DateTime.now()),
    Transaction(id: 't2', title: 'Movie', price: 400, date: DateTime.now())
  ];

  void _addnewtransaction(String titletxt, double amounttxt) {
    final newtxt = Transaction(
      id: DateTime.now().toString(),
      title: titletxt,
      price: amounttxt,
      date: DateTime.now(),
    );

    setState(() {
      _usertransaction.add(newtxt);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addnewtransaction),
        Transaction_List(_usertransaction),
      ],
    );
  }
}
