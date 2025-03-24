import 'package:flutter/material.dart';

import 'package:my_expense_tracker/expense_list.dart';
import 'package:my_expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      // appBar: AppBar(title: Text('Expenses')),
      body: Center(child: ExpenseList(expenses: generateDummyExpenses(10))),
    );
  }
}
