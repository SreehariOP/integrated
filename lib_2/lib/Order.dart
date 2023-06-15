import 'package:flutter/material.dart';
import 'package:mac__tools/kundan/main.dart';

import 'kundan/invoices.dart';
import 'kundan/master_order.dart';
import 'kundan/submit_order.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  order_buttons(),
                ],
              )),
          Expanded(child: Container())
        ],
      ),
    );
  }
}

class order_procurement extends StatelessWidget {
  const order_procurement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => MyHomePage(title: 'Master Order')),
            ),
          );
        },
        child: Text('Master Order'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => SubmitOrderPage()),
            ),
          );
        },
        child: Text('Submit Order'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => InvoicesPage()),
            ),
          );
        },
        child: Text('Invoices'),
      ),
    ]);
  }
}

class order_buttons extends StatelessWidget {
  const order_buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => MyHomePage(title: 'Master Order')),
            ),
          );
        },
        child: Text('Master Order'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => SubmitOrderPage()),
            ),
          );
        },
        child: Text('Submit Order'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => InvoicesPage()),
            ),
          );
        },
        child: Text('Invoices'),
      ),
    ]);
  }
}
