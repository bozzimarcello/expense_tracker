import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
}

// a map that associates each category with an icon
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // Generate a unique random id

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  //get formattedDate => '${date.day}/${date.month}/${date.year}';

  // a getter can be called like a property
  get formattedDate {
    return formatter.format(date);
  }
}
