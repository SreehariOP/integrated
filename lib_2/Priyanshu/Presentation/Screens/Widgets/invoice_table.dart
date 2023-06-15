import 'package:flutter/material.dart';

import '../../Components/spacer.dart';

class InvoiceBuilder extends StatelessWidget {
  const InvoiceBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        const HeightSpacer(myHeight: 10.00),
        tableHeader(),
        const HeightSpacer(myHeight: 10.00),
        buildTableData(),
        buildTableData1(),
        buildTableData2(),
        buildTableData3(),
        const HeightSpacer(myHeight: 20.00)
      ],
    );
  }

  Widget header() => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text(
            "Activity Report  ",
            style: TextStyle(fontSize: 23.00, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 35.00,
          ),
          WidthSpacer(myWidth: 5.5),
        ],
      );

  Widget tableHeader() => Container(
        color: Color.fromARGB(255, 223, 30, 30),
        width: double.infinity,
        height: 36.00,
        child: const Center(
          child: Text(
            "Summary of Customer",
            style: TextStyle(
                color: Color.fromARGB(255, 239, 243, 239),
                fontSize: 20.00,
                fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget buildTableData() => SizedBox(
        //color: i % 2 != 0
        // ? const Color.fromARGB(255, 236, 236, 236)
        //: const Color.fromARGB(255, 255, 251, 251),
        width: double.infinity,
        height: 36.00,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(width: 90),
                Text(
                  "Disturbutor ID",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                Text(
                  "Tot.Sales",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                Text(
                  "Avg.Sales",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                Text(
                  "Gross Margin",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                Text(
                  "Comp.Business",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                Text(
                  "Sales Tax",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                Text(
                  "No. of Sales",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 35),
                Text(
                  "No. of Collection",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 70),
              ],
            ),
          ),
        ),
      );

  Widget buildTableData1() => Container(
        //color: i % 2 != 0
        // ? const Color.fromARGB(255, 236, 236, 236)
        //: const Color.fromARGB(255, 255, 251, 251),
        width: double.infinity,
        height: 36.00,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: 110),
                Text(
                  "342395",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 65),
                Text(
                  "30,714.41",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 40),
                Text(
                  "122.37",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 60),
                Text(
                  "30,714.41",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 75),
                Text(
                  "29,767.58",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 65),
                Text(
                  "2,477.49",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 60),
                Text(
                  "251",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 110),
                Text(
                  "187",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildTableData2() => Container(
        //color: i % 2 != 0
        // ? const Color.fromARGB(255, 236, 236, 236)
        //: const Color.fromARGB(255, 255, 251, 251),
        width: double.infinity,
        height: 36.00,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(width: 110),
                Text(
                  "561235",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 65),
                Text(
                  "30,714.41",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 40),
                Text(
                  "122.37",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 60),
                Text(
                  "30,714.41",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 75),
                Text(
                  "29,767.58",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 60),
                Text(
                  "2,477.49",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 65),
                Text(
                  "251",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 110),
                Text(
                  "187",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildTableData3() => Container(
        //color: i % 2 != 0
        // ? const Color.fromARGB(255, 236, 236, 236)
        //: const Color.fromARGB(255, 255, 251, 251),
        width: double.infinity,
        height: 36.00,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(width: 110),
                Text(
                  "852333",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 65),
                Text(
                  "30,714.41",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 40),
                Text(
                  "122.37",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 60),
                Text(
                  "30,714.41",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 75),
                Text(
                  "29,767.58",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 60),
                Text(
                  "2,477.49",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 65),
                Text(
                  "251",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
                SizedBox(width: 110),
                Text(
                  "187",
                  style:
                      TextStyle(fontSize: 18.00, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      );
}
