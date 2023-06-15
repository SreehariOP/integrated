import 'package:flutter/material.dart';
import '../../Components/image_builder.dart';
import '../../Components/spacer.dart';
//import 'printable_data.dart';

import 'package:printing/printing.dart';

import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import '../Widgets/invoice_table.dart';
import '../Widgets/save_btn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => home_page();
}

class home_page extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return report_home();
  }
}

class report_home extends StatelessWidget {
  const report_home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.00),
            child: Column(
              children: const [
                Text("Reports",
                    style: TextStyle(
                        fontSize: 25.00, fontWeight: FontWeight.bold)),
                HeightSpacer(myHeight: 10.00),
                Divider(),
                InvoiceBuilder(),
                HeightSpacer(myHeight: 15.00),
                Text(
                  "Thanks for choosing MAC Tool service!",
                  style: TextStyle(color: Colors.grey, fontSize: 15.00),
                ),
                HeightSpacer(myHeight: 5.00),
                Text(
                  "Contact the  for customer care for any clarifications.",
                  style: TextStyle(color: Colors.grey, fontSize: 15.00),
                ),
                HeightSpacer(myHeight: 15.00),
                SaveBtnBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
