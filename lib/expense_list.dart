import 'package:flutter/material.dart';
import 'package:my_expense_tracker/expense_card_item.dart';
import 'package:my_expense_tracker/models/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseCardItem(expenses[index]),
    );
  }
}
