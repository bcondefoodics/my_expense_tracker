import 'package:flutter/material.dart';
import 'package:my_expense_tracker/expenses.dart';

final kColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);
final kDarkColorScheme = ColorScheme.fromSeed(seedColor: Colors.greenAccent);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.secondaryContainer,
            foregroundColor: kDarkColorScheme.onSecondaryContainer,
          ),
        ),
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.secondary,
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.primaryContainer,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kDarkColorScheme.primary,
          titleTextStyle: TextStyle(
            color: kColorScheme.onSecondary,
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
            foregroundColor: kColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: TextTheme().copyWith(
          titleLarge: TextStyle(
            color: kColorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      home: Expenses(),
    ),
  );
}
