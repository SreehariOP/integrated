import 'package:flutter/material.dart';
import 'package:mac__tools/shiny/lib/product_details.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: product_details(),
    );
  }
}
