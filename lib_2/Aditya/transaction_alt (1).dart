
import 'package:flutter/material.dart';

 

void main() {

  runApp(CustomerTransactionApp());

}

 

class CustomerTransactionApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Customer Transaction History',

      theme: ThemeData(

        primarySwatch: Colors.red,

      ),

      home: CustomerTransactionScreen(),
      debugShowCheckedModeBanner: false,
    );

  }

}

 

class CustomerTransactionScreen extends StatelessWidget {

  final List<Map<String, dynamic>> transactions = [

    {

      'distributorName': 'ABC Distributors',

      'date': '2023-05-01',

      'time': '09:30AM',

      'amount': '\$50.00',

    },

    {

      'distributorName': 'XYZ Distributors',

      'date': '2023-05-05',

      'time': '02:15PM',

      'amount': '\$75.00',

    },

    {

      'distributorName': 'ABC Distributors',

      'date': '2023-05-10',

      'time': '11:45AM',

      'amount': '\$100.00',

    },

    {

      'distributorName': 'LMN Distributors',

      'date': '2023-05-15',

      'time': '04:20PM',

      'amount': '\$120.00',

    },

    {

      'distributorName': 'XYZ Distributors',

      'date': '2023-05-20',

      'time': '01:10PM',

      'amount': '\$80.00',

    },

  ];

 

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Customer Transaction History'),

      ),

      body: ListView.builder(

        itemCount: transactions.length,

        itemBuilder: (context, index) {

          final transaction = transactions[index];

          final isEvenIndex = index % 2 == 0;

          final tileColor = isEvenIndex ? Colors.lightBlue : Colors.green;

 

          return Padding(

            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

            child: Container(

              decoration: BoxDecoration(

                color: tileColor,

                borderRadius: BorderRadius.circular(16.0),

              ),

              child: ListTile(

                title: Text(

                  transaction['distributorName'],

                  style: const TextStyle(

                    color: Colors.white,

                    fontWeight: FontWeight.bold,

                  ),

                ),

                subtitle: Text('${transaction['date']} at ${transaction['time']}'),

                trailing: Text(transaction['amount']),

                onTap: () {

                  Navigator.push(

                    context,

                    MaterialPageRoute(

                      builder: (context) => TransactionDetailsScreen(transaction),

                    ),

                  );

                },

              ),

            ),

          );

        },

      ),

    );

  }

}

 

class TransactionDetailsScreen extends StatelessWidget {

  final Map<String, dynamic> transaction;

 

  TransactionDetailsScreen(this.transaction);

 

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Transaction Details'),

      ),

      body: Padding(

        padding: EdgeInsets.all(16.0),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(

              'Distributor: ${transaction['distributorName']}',

              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),

            ),

            SizedBox(height: 8.0),

            Text('Date: ${transaction['date']}'),

            SizedBox(height: 8.0),

            Text('Time: ${transaction['time']}'),

            SizedBox(height: 8.0),

            Text('Amount: ${transaction['amount']}'),

          ],

        ),

      ),

    );

  }

}
