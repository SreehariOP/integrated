import 'package:mac__tools/Priyanshu/Presentation/Screens/UI/home_page.dart';
import 'package:flutter/material.dart';

import 'Priyanshu/Presentation/Components/spacer.dart';
import 'Priyanshu/Presentation/Screens/Widgets/invoice_table.dart';
import 'Priyanshu/Presentation/Screens/Widgets/save_btn.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: report_home(),
    );
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
