// ignore_for_file: depend_on_referenced_packages, unused_import, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_email_sender/flutter_email_sender.dart';

import 'package:path_provider/path_provider.dart';

import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  Future<void> sendEmail(BuildContext context) async {
    final pdfPath = await generatePDF();

    final Email email = Email(
      body: 'Please find the order details attached.',
      subject: 'Order Details Report',
      recipients: ['kumaradit@hcl.com'],
      isHTML: false,
      attachmentPaths: [pdfPath],
    );

    await FlutterEmailSender.send(email);
  }

  Future<void> savePDF(BuildContext context) async {
    final pdfPath = await generatePDF();

    final File file = File(pdfPath);

    if (await file.exists()) {
      // Show a confirmation dialog

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('PDF Saved'),
            content: const Text('The PDF file has been saved.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // File does not exist
    }
  }

  Future<String> generatePDF() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'Order ID: 12345',
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 16.0),
              pw.Text('Order Date: 2023-06-07'),
              pw.SizedBox(height: 16.0),
              pw.Text('Bill To: Aditya kumar'),
              pw.SizedBox(height: 16.0),
              pw.Text('Ship To: Patel Aditya, XYZ national highway Patna , Bihar, PIN: 800321 '),
              pw.SizedBox(height: 32.0),
              pw.Table(
                children: [
                  pw.TableRow(children: [
                    pw.Text('Product'),
                    pw.Text('Title'),
                    pw.Text('Quantity'),
                    pw.Text('Gross Amount'),
                    pw.Text('Discount'),
                    pw.Text('Taxable Value'),
                    pw.Text('Total'),
                  ]),
                  pw.TableRow(children: [
                    pw.Text('Product A'),
                    pw.Text('Example Title'),
                    pw.Text('10'),
                    pw.Text('\$100.00'),
                    pw.Text('\$0.00'),
                    pw.Text('\$100.00'),
                    pw.Text('\$100.00'),
                  ]),
                  pw.TableRow(children: [
                    pw.Text('Product B'),
                    pw.Text('Dummy Title'),
                    pw.Text('5'),
                    pw.Text('\$50.00'),
                    pw.Text('\$0.00'),
                    pw.Text('\$50.00'),
                    pw.Text('\$50.00'),
                  ]),
                ],
              ),
              pw.SizedBox(height: 16.0),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Text(' Total Discount: \$10.00'),
                  pw.SizedBox(width: 16.0),
                  pw.Text('Total Taxable Value: \$200.00'),
                  pw.SizedBox(width: 16.0),
                  pw.Text('Net Total: \$240.00'),
                ],
              ),
            ],
          );
        },
      ),
    );

    final directory = await getTemporaryDirectory();

    final path = '${directory.path}/order_details.pdf';

    final file = File(path);

    await file.writeAsBytes(await pdf.save());

    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Order ID: 12345',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 16.0),

                const Text('Order Date: 2023-06-07'),

                const SizedBox(height: 16.0),

                const Text('Bill To: Aditya Kumar'),

                const SizedBox(height: 16.0),

                const Text('Ship To: Patel Aditya, XYZ national highway Patna , Bihar, PIN: 800321'),

                const SizedBox(height: 32.0),

                DataTable(
                  columns: const [
                    DataColumn(label: Text('Product')),
                    DataColumn(label: Text('Title')),
                    DataColumn(label: Text('Quantity')),
                    DataColumn(label: Text('Gross Amount')),
                    DataColumn(label: Text('Discount')),
                    DataColumn(label: Text('Taxable Value')),
                    DataColumn(label: Text('Total')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('Product A')),
                      DataCell(Text('Example Title')),
                      DataCell(Text('10')),
                      DataCell(Text('\$100.00')),
                      DataCell(Text('\$0.00')),
                      DataCell(Text('\$100.00')),
                      DataCell(Text('\$100.00')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Product B')),
                      DataCell(Text('Dummy Title')),
                      DataCell(Text('5')),
                      DataCell(Text('\$50.00')),
                      DataCell(Text('\$0.00')),
                      DataCell(Text('\$50.00')),
                      DataCell(Text('\$50.00')),
                    ]),
                  ],
                ),

                const SizedBox(height: 16.0),

                const SizedBox(height: 16.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(' Total Discount: \$0.00'),
                    SizedBox(width: 16.0),
                    Text('Total Taxable Value: \$150.00'),
                    SizedBox(width: 16.0),
                    Text('Net Total: \$150.00'),
                  ],
                ),
                const SizedBox(height: 16.0),
                const SizedBox(height: 16.0),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.email),
                        onPressed: () => sendEmail(context),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.picture_as_pdf),
                        onPressed: () => savePDF(context),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}











