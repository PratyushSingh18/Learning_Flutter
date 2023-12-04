import 'package:expanse_tracker/expense_item.dart';
import 'package:expanse_tracker/modal/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expense,
  });
  final List<Expense> expense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (ctx, index) => ExpenseItem(expense: expense[index]),
    );
  }
}
