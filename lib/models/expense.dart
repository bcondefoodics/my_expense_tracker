import 'package:uuid_v4/uuid_v4.dart';

import 'dart:math';
import 'expense_category.dart';
import 'package:intl/intl.dart';

final uuid = UUIDv4();
var formatter = DateFormat.yMd();

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseCategory category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.toString();

  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  final ExpenseCategory category;
  final double totalExpenses;

  ExpenseBucket(this.category, this.totalExpenses);

  factory ExpenseBucket.forCategory(
    List<Expense> expenses,
    ExpenseCategory category,
  ) {
    final totalExpenses = expenses
        .where((expense) => expense.category == category)
        .fold(0.0, (prev, element) => prev + element.amount);

    return ExpenseBucket(category, totalExpenses);
  }
}

// Dummy data

final _random = Random();

final List<String> sampleTitles = [
  'Coffee at Starbucks',
  'Grocery Shopping',
  'Netflix Subscription',
  'Dinner with Friends',
  'Flight Ticket',
  'Gym Membership',
  'Movie Night',
  'Taxi Ride',
  'Electricity Bill',
  'Online Course',
];

ExpenseCategory getRandomCategory() {
  return ExpenseCategory.values[_random.nextInt(ExpenseCategory.values.length)];
}

DateTime getRandomDate() {
  return DateTime.now().subtract(Duration(days: _random.nextInt(30)));
}

double getRandomAmount() {
  return (_random.nextDouble() * 200).clamp(5, 200).toDouble();
}

String getRandomTitle() {
  return sampleTitles[_random.nextInt(sampleTitles.length)];
}

List<Expense> generateDummyExpenses(int count) {
  return List.generate(count, (index) {
    return Expense(
      title: getRandomTitle(),
      amount: getRandomAmount(),
      date: getRandomDate(),
      category: getRandomCategory(),
    );
  });
}
