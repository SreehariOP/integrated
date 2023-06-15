import '../main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Order Procurement',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: HomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Invoices'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => InvoicesPage()),
//             );
//           },
//           child: Text('Invoices'),
//         ),
//       ),
//     );
//   }
// }

class SubmitOrderPage extends StatefulWidget {
  @override
  _SubmitOrderPageState createState() => _SubmitOrderPageState();
}

class _SubmitOrderPageState extends State<SubmitOrderPage> {
  bool _isRowClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submitted Order'),
      ),
      body: _isRowClicked
          ? DetailTable()
          : SubmitOrderTable(onRowClick: _handleRowClick),
    );
  }

  void _handleRowClick() {
    setState(() {
      _isRowClicked = true;
    });
  }
}

class SubmitOrderTable extends StatelessWidget {
  final Function onRowClick;

  const SubmitOrderTable({required this.onRowClick});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DataTable(
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
          dataRowColor:
              MaterialStateColor.resolveWith((states) => Colors.white70),
          columns: const [
            DataColumn(label: Text('MBA Order No.')),
            DataColumn(label: Text('Type')),
            DataColumn(label: Text('Order Date')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Credit Review')),
            DataColumn(label: Text('Shop/Customer')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('MBA001')),
                DataCell(Text('Type 1')),
                DataCell(Text('2023-05-20')),
                DataCell(Text('Pending')),
                DataCell(Text('In Progress')),
                DataCell(Text('Customer')),
              ],
              onSelectChanged: (isSelected) {
                if (isSelected != null) {
                  onRowClick();
                }
              },
            ),
            DataRow(
              cells: [
                DataCell(Text('MBA002')),
                DataCell(Text('Type 2')),
                DataCell(Text('2023-05-21')),
                DataCell(Text('Pending')),
                DataCell(Text('In Progress')),
                DataCell(Text('Shop')),
              ],
              onSelectChanged: (isSelected) {
                if (isSelected != null) {
                  onRowClick();
                }
              },
            ),
            // Add more rows as needed
          ],
        ),
      ],
    );
  }
}

class DetailTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Colors.blue),
            dataRowColor:
                MaterialStateColor.resolveWith((states) => Colors.white70),
            columns: [
              DataColumn(label: Text('Item No.')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('Order Qty')),
              DataColumn(label: Text('Rec Qty')),
              DataColumn(label: Text('Ship Qty')),
              DataColumn(label: Text('Ship Date')),
              DataColumn(label: Text('Bo Qty')),
              DataColumn(label: Text('BO Est. Date')),
              DataColumn(label: Text('Cancel Quantity')),
              DataColumn(label: Text('Req. Qty')),
              DataColumn(label: Text('Shipping')),
              DataColumn(label: Text('Promos')),
              DataColumn(label: Text('MBA Order Number')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Item No.')),
                DataCell(Text('Description')),
                DataCell(Text('Order Qty')),
                DataCell(Text('Rec Qty')),
                DataCell(Text('Ship Qty')),
                DataCell(Text('Ship Date')),
                DataCell(Text('Bo Qty')),
                DataCell(Text('BO Est. Date')),
                DataCell(Text('Cancel Quantity')),
                DataCell(Text('Req. Qty')),
                DataCell(Text('Shipping')),
                DataCell(Text('Promos')),
                DataCell(Text('MBA Order Number')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Item 2')),
                DataCell(Text('8')),
                DataCell(Text('8')),
                DataCell(Text('6')),
                DataCell(Text('2023-05-03')),
                DataCell(Text('0')),
                DataCell(Text('8')),
                DataCell(Text('Shipping 7')),
                DataCell(Text('Promo 7')),
                DataCell(Text('Promo 7')),
                DataCell(Text('Promo 7')),
                DataCell(Text('Promo 7')),
              ]),
              // Add more rows as needed
            ],
          ),
        )
      ],
    );
  }
}
