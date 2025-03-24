import 'package:flutter/material.dart';

import 'package:my_expense_tracker/widgets/expense_list/expense_list.dart';
import 'package:my_expense_tracker/models/expense.dart';
import 'package:my_expense_tracker/widgets/new_expense/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _expenses = generateDummyExpenses(2);

  void _openAddExpensesOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return NewExpense(_addExpense);
      },
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _expenses.add(expense);
    });
  }

  void _deleteExpense(Expense expense) {
    setState(() {
      _expenses.remove(expense);
    });
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
      body: Center(child: ExpenseList(_expenses, _deleteExpense)),
    );
  }
}
