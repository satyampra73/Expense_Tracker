import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(height: 5),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    SizedBox(width: 5),
                    Text(expense.formattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
