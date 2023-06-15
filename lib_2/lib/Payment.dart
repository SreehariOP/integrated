import 'package:flutter/material.dart';
import 'package:mac__tools/krishna/payment_screen.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: payment_screen(),
    );
  }
}
