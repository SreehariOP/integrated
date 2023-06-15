import 'package:flutter/material.dart';
import 'package:mac__tools/Sidhant/pages/pos_pricing.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return POSPricing();
  }
}
