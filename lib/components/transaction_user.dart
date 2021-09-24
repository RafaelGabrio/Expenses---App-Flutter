import 'package:flutter/material.dart';
import './transaction_form.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class TransationUser extends StatefulWidget {
  
  @override
  _TransationUserState createState() => _TransationUserState();
}

class _TransationUserState extends State<TransationUser> {
   final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 310.76,
        date: DateTime.now(),
    ),
    Transaction(
        id: 't2', 
        title: 'Conta de Luz', 
        value: 211.30, 
        date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}