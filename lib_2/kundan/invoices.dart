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

class InvoicesPage extends StatefulWidget {
  @override
  _InvoicesPageState createState() => _InvoicesPageState();
}

class _InvoicesPageState extends State<InvoicesPage> {
  bool _isRowClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoices'),
      ),
      body: _isRowClicked
          ? DetailTable()
          : InvoiceTable(onRowClick: _handleRowClick),
    );
  }

  void _handleRowClick() {
    setState(() {
      _isRowClicked = true;
    });
  }
}

class InvoiceTable extends StatelessWidget {
  final Function onRowClick;

  const InvoiceTable({required this.onRowClick});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: DataTable(
            headingRowColor: MaterialStateColor.resolveWith(
                (states) => Color.fromARGB(255, 72, 152, 218)),
            dataRowColor:
                MaterialStateColor.resolveWith((states) => Colors.white70),
            columns: [
              DataColumn(label: Text('Invoice No.')),
              DataColumn(label: Text('Date Submitted')),
              DataColumn(label: Text('Date Checked In')),
              DataColumn(label: Text('MOC')),
              DataColumn(label: Text('Freight')),
              DataColumn(label: Text('Total in \$')),
              DataColumn(label: Text('Sales Tax')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('INV001')),
                  DataCell(Text('2023-05-15')),
                  DataCell(Text('2023-05-20')),
                  DataCell(Text('MOC123')),
                  DataCell(Text('\$50.00')),
                  DataCell(Text('\$150.00')),
                  DataCell(Text('\$10.00')),
                ],
                onSelectChanged: (isSelected) {
                  if (isSelected != null) {
                    onRowClick();
                  }
                },
              ),
              DataRow(
                cells: [
                  DataCell(Text('INV002')),
                  DataCell(Text('2023-05-18')),
                  DataCell(Text('2023-05-22')),
                  DataCell(Text('MOC456')),
                  DataCell(Text('\$30.00')),
                  DataCell(Text('\$120.00')),
                  DataCell(Text('\$8.00')),
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
        DataTable(
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
          dataRowColor:
              MaterialStateColor.resolveWith((states) => Colors.white70),
          columns: [
            DataColumn(label: Text('Item No.')),
            DataColumn(label: Text('Description')),
            DataColumn(label: Text('Invoice Quantity')),
            DataColumn(label: Text('Received Quantity')),
            DataColumn(label: Text('Cost')),
            DataColumn(label: Text('Process Cost')),
            DataColumn(label: Text('Sales Tax')),
            DataColumn(label: Text('Box')),
            DataColumn(label: Text('Mac Order Number')),
            DataColumn(label: Text('Edit')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Item 1')),
              DataCell(Text('10')),
              DataCell(Text('8')),
              DataCell(Text('\$10.00')),
              DataCell(Text('\$5.00')),
              DataCell(Text('\$1.00')),
              DataCell(Text('Box 1')),
              DataCell(Text('MOC123')),
              DataCell(IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              )),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Item 2')),
              DataCell(Text('5')),
              DataCell(Text('5')),
              DataCell(Text('\$15.00')),
              DataCell(Text('\$3.00')),
              DataCell(Text('\$0.75')),
              DataCell(Text('Box 2')),
              DataCell(Text('MOC123')),
              DataCell(IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              )),
            ]),
            // Add more rows as needed
          ],
        ),
      ],
    );
  }
}
