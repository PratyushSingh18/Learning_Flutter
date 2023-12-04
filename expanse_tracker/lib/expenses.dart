import 'package:expanse_tracker/expenses_list.dart';
import 'package:expanse_tracker/modal/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _expenseList = [
    Expense(
      details: 'Cinema',
      amount: 250,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      details: 'Pizza',
      amount: 350,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Table'),
          Expanded(
            child: ExpensesList(expense: _expenseList),
          ),
        ],
      ),
    );
  }
}
