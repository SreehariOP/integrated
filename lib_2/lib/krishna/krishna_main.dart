import 'package:flutter/material.dart';

class User {
  String name;
  double balance;
  User(this.name, this.balance);
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  User user = User('Akash', 1500.0);
  double selectedProductPrice = 0.0;

  void makePayment(BuildContext context) {
    if (user.balance >= selectedProductPrice) {
      setState(() {
        user.balance -= selectedProductPrice;
      });
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Payment Successful'),
            content: Text(
                'Amount deducted: \$${selectedProductPrice.toStringAsFixed(2)}'),
            actions: [
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Insufficient Funds'),
            content:
                Text('Your account balance is not enough to make the payment.'),
            actions: [
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User: ${user.name}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Balance: \$${user.balance.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(labelText: 'Enter Product Price'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  selectedProductPrice = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Make Payment'),
              onPressed: () => makePayment(context),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentScreen(),
  ));
}
