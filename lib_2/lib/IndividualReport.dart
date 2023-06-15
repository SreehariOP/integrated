import 'package:flutter/material.dart';
import 'package:mac__tools/Aditya/report%20(1).dart';

class IndividualReport extends StatefulWidget {
  const IndividualReport({super.key});

  @override
  State<IndividualReport> createState() => _IndividualReportState();
}

class _IndividualReportState extends State<IndividualReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderDetailsScreen(),
    );
  }
}
