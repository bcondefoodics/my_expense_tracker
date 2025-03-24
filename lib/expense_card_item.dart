import 'package:flutter/material.dart';
import 'package:my_expense_tracker/models/expense.dart';
import 'package:my_expense_tracker/models/expense_category.dart';

class ExpenseCardItem extends StatelessWidget {
  const ExpenseCardItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(expense.title),
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                categoryIcons[expense.category]!,
                SizedBox(width: 10),
                Text(expense.formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
