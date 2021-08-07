import 'package:flutter/material.dart';

class TransactionModel {
  String name;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color color;

  TransactionModel({
    required this.avatar,
    required this.changePercentage,
    required this.changePercentageIndicator,
    required this.currentBalance,
    required this.month,
    required this.name,
    required this.color,
});
}

List<TransactionModel> myTransactions = [
  TransactionModel(
      avatar: 'assets/icons/avatar1.png',
      changePercentage: '0.41%',
      changePercentageIndicator: 'up',
      currentBalance: '\$5482',
      month: 'Jan',
      name: 'Superme Leader',
      color: Color(0xC8E6C9FF),
      // color: Colors.green[100],
  ),
  TransactionModel(
      avatar: 'assets/icons/avatar2.png',
      changePercentage: '4.54%',
      changePercentageIndicator: 'down',
      currentBalance: '\$4252',
      month: 'Mar',
      name: 'Jane Doe',
      color: Color(0xFFE0B2FF),
      // color: Colors.orange[100],
  ),
  TransactionModel(
    avatar: 'assets/icons/avatar3.png',
    changePercentage: '1.27%',
    changePercentageIndicator: 'down',
    currentBalance: '\$4052',
    month: 'Mar',
    name: 'Ale Doe',
    color: Color(0xFFCDD2FF),
    // color: Colors.red[100],
  ),
  TransactionModel(
    avatar: 'assets/icons/avatar2.png',
    changePercentage: '3.09%',
    changePercentageIndicator: 'up',
    currentBalance: '\$5052',
    month: 'Mar',
    name: 'Sam Doe',
    color: Color(0xD1C4E9FF),
    // color: Colors.deepPurple[100],
  ),
  TransactionModel(
    avatar: 'assets/icons/avatar1.png',
    changePercentage: '0.41%',
    changePercentageIndicator: 'up',
    currentBalance: '\$5482',
    month: 'Mar',
    name: 'Jane Doe',
    // color: Colors.orange[100],
    color: Color(0xFFE0B2FF),
  ),
  TransactionModel(
    avatar: 'assets/icons/avatar2.png',
    changePercentage: '4.54%',
    changePercentageIndicator: 'down',
    currentBalance: '\$54252',
    month: 'Mar',
    name: 'Jane Doe',
    // color: Colors.orange[100],
    color: Color(0xFFE0B2FF),
  ),
];