import 'package:flutter/material.dart';
import 'package:my_expense_tracker/widgets/expense_list/expense_card_item.dart';
import 'package:my_expense_tracker/models/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(this.expenses, this.onDeleteExpense, {super.key});

  final List<Expense> expenses;
  final Function(Expense) onDeleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder:
          (ctx, index) => Dismissible(
            key: ValueKey(expenses[index]),
            onDismissed: (direction) {
              onDeleteExpense(expenses[index]);
            },
            child: ExpenseCardItem(expenses[index]),
          ),
    );
  }
}
