import 'package:flutter/material.dart';
import 'package:mac__tools/Aditya/transaction_alt%20(1).dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomerTransactionScreen(),
    );
  }
}
