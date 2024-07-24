import 'package:expense_tracker/models/expense.dart';

class ExpenseBucket {
  const ExpenseBucket({required this.category, required this.expenses});

// alternative constructor syntax
  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where(
              (expense) => expense.category == category,
            )
            .toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    // return expenses.fold(0, (previousValue, element) => previousValue + element.amount);
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }
    return sum;
  }
}
