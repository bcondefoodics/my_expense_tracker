import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  void _openAddExpensesOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Text('Test Bottom sheet');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: false,
        title: Text("Expenses"),
        actions: [
          IconButton(onPressed: _openAddExpensesOverlay, icon: Icon(Icons.add)),
        ],
      ),
      body: Center(child: ExpenseList(expenses: generateDummyExpenses(50))),
    );
  }
}
