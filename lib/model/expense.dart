import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';


final formatter = DateFormat.yMd();
final uuid = Uuid();

enum Category { food, travel, leisure , work}

const categoryIcons = {

  Category.food: Icons.fastfood,
  Category.travel: Icons.flight,
  Category.leisure: Icons.celebration,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title, 
    required this.amount, 
    required this.date,
    required this.category 
    }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate{
    return formatter.format(date);
  } 
}
