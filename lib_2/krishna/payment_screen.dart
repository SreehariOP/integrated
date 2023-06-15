import 'package:flutter/material.dart';

import 'krishna_main.dart';

class payment_screen extends StatefulWidget {
  const payment_screen({super.key});

  @override
  State<payment_screen> createState() => _payment_screenState();
}

class _payment_screenState extends State<payment_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentScreen(),
    );
  }
}
