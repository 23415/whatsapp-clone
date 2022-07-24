// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './widget/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          backgroundColor: Color.fromARGB(128, 106, 105, 105),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(63, 81, 181, 1),
            title: Text('Personal Expense'),
          ),
          body: ListView(
            children: [
              Card(
                color: Color.fromARGB(169, 63, 81, 181),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                elevation: 10,
                child: Container(
                    width: double.infinity,
                    height: 150,
                    child: Text(
                      '',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              UserTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
