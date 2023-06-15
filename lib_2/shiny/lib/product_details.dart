import 'package:flutter/material.dart';
import 'package:mac__tools/shiny/lib/main%20(1).dart';

class product_details extends StatefulWidget {
  const product_details({super.key});

  @override
  State<product_details> createState() => _product_detailsState();
}

class _product_detailsState extends State<product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductListPage(),
    );
  }
}
