import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed( 
  // ColorScheme.fromSeed is a constructor that creates a ColorScheme from a seed color
  // so you can create a color scheme with a primary color and the others are generated from it
  seedColor: const Color.fromARGB(255, 176, 46, 228),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith( 
        // copyWith lets you create a new ThemeData changing only the properties you want
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primary,
        )
      ),
      home: const Expenses(),
    ),
  );
}
