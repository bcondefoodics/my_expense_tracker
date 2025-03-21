import 'package:uuid_v4/uuid_v4.dart';

final uuid = UUIDv4();

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Expense({required this.title, required this.amount, required this.date})
    : id = uuid.toString();
}
