import 'package:flutter/material.dart';

enum ExpenseCategory { food, work, leisure }

const categoryIcons = {
  ExpenseCategory.food: Icon(Icons.food_bank),
  ExpenseCategory.work: Icon(Icons.work),
  ExpenseCategory.leisure: Icon(Icons.travel_explore),
};
