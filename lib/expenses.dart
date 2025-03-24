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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        // toolbarTextStyle: GoogleFonts.roboto(
        //   fontSize: 25,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.amber,
        // ),
        // titleTextStyle: GoogleFonts.roboto(
        //   //   fontSize: 25,
        //   //   fontWeight: FontWeight.bold,
        // ),
        centerTitle: false,
        title: Text("Expenses"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(child: ExpenseList(expenses: generateDummyExpenses(50))),
    );
  }
}
