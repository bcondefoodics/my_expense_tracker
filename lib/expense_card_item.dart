import 'package:flutter/material.dart';
import 'package:my_expense_tracker/models/expense.dart';

class ExpenseCardItem extends StatelessWidget {
  const ExpenseCardItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(expense.title),
      ),
    );
  }
}
