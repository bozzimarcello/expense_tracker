import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    // ListView.builder create the items only if they are visible
    // to be used when there are many items
    // instead of ListView, which creates all items at once
    // or Column, which creates all items at once and doesn't have scrolling
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) =>
          Dismissible(
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
            key: ValueKey(expenses[index]),
            child: ExpenseItem(expenses[index])),
    );
  }
}
