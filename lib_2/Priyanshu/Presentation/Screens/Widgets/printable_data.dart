import 'package:flutter/widgets.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

buildPrintableData(image) => pw.Padding(
      padding: const pw.EdgeInsets.all(25.00),
      child: pw.Column(
        children: [
        pw.Text("Reports",
            style:
                pw.TextStyle(fontSize: 25.00, fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 10.00),
        pw.Divider(),
        pw.Column(
          children: [
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.SizedBox(width: 5.5),
                pw.Text(
                  "Activity Report",
                  style: pw.TextStyle(
                      fontSize: 23.00, fontWeight: pw.FontWeight.bold),
                )
              ],
            ),
            pw.SizedBox(height: 10.00),
            pw.Container(
              color: const PdfColor(1, 0, 0, 0),
              width: double.infinity,
              height: 36.00,
              child: pw.Center(
                child: pw.Text(
                  "Summary of Customer",
                  style: pw.TextStyle(
                      color: const PdfColor(0, 0, 0, 0.7),
                      fontSize: 20.00,
                      fontWeight: pw.FontWeight.bold),
                ),
              ),
            ),
            

              pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 0),
              child: pw.Container(
                width: double.infinity,
                height: 36.00,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                     
                    pw.Text(
                      "Disturbutor ID",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(width: 5),
                   pw.Text(
                      "Tot.Sales",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(width: 5),
                  pw.Text(
                      "Avg.Sales",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(width: 5),

                    pw.Text(
                      "Gross Margin",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(width: 5),
                   pw.Text(
                      "Comp.Business",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(width: 5),
                  pw.Text(
                      "Sales Tax",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(width: 5),
                    pw.Text(
                      "No.ofSales",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    pw.SizedBox(width: 5),
                  //pw.Text(
                   //   "No.ofCollec.",
                    //  style: pw.TextStyle(
                    //      fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                   // ),
                   
                  ],
                ),
              ),
            ),
            
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 15.0),
              child: pw.Container(
                width: double.infinity,
                height: 36.00,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                     
                    pw.Text(
                      "342395",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ), 
                   pw.Text(
                      "30,714.41",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                  pw.Text(
                      "122.37",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                    pw.Text(
                      "30,714.41",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                    
                   pw.Text(
                      "29,767.58",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                  pw.Text(
                      "2,477.49",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                    pw.Text(
                      "251",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                 // pw.Text(
                   //   "187",
                     // style: pw.TextStyle(
                       //   fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                   // ),
                   
                  ],
                ),
              ),
            ),

           pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 15.0),
              child: pw.Container(
                width: double.infinity,
                height: 36.00,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                     
                    pw.Text(
                      "561235",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    
                   pw.Text(
                      "30,714.41",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                  pw.Text(
                      "122.37",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                   
                    pw.Text(
                      "30,714.41",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                   
                   pw.Text(
                      "29,767.58",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                    
                  pw.Text(
                      "2,477.49",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                    pw.Text(
                      "251",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                   
                  //pw.Text(
                    //  "187",
                     // style: pw.TextStyle(
                       //   fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    //),
                   
                  ],
                ),
              ),
            ),

           pw.Padding(
              padding: const pw.EdgeInsets.symmetric(horizontal: 15.0),
              child: pw.Container(
                width: double.infinity,
                height: 36.00,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                     
                    pw.Text(
                      "852333",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.bold),
                    ),
                    
                   pw.Text(
                      "30,714.41",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                  pw.Text(
                      "122.37",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                    
                    pw.Text(
                      "30,714.41",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                    
                   pw.Text(
                      "29,767.58",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                  pw.Text(
                      "2,477.49",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                   
                    pw.Text(
                      "251",
                      style: pw.TextStyle(
                          fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    ),
                   
                  //pw.Text(
                    //  "187",
                      //style: pw.TextStyle(
                        //  fontSize: 10.00, fontWeight: pw.FontWeight.normal),
                    //),
                   
                  ],
                ),
              ),
            ),   
            
            pw.SizedBox(height: 15.00),
            pw.Text(
              "Thanks for choosing MAC Tool service!",
              style: const pw.TextStyle(
                  color: PdfColor(0.5, 0.5, 0.5, 0.5), fontSize: 15.00),
            ),
            pw.SizedBox(height: 5.00),
            pw.Text(
              "Contact for customer care for any clarifications.",
              style: const pw.TextStyle(
                  color: PdfColor(0.5, 0.5, 0.5, 0.5), fontSize: 15.00),
            ),
            pw.SizedBox(height: 15.00),
          ],
        )
      ]),
    );
