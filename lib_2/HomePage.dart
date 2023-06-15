import 'package:flutter/material.dart';
import 'package:mac__tools/Aditya/report%20(1).dart';
import 'package:mac__tools/Dummy.dart';
import 'package:mac__tools/Order.dart';
import 'package:mac__tools/ProductDetails.dart';
import 'package:mac__tools/pricing.dart';

import 'Customer.dart';
import 'Dashboard.dart';
import 'DrawerList.dart';
import 'Payment.dart';
import 'Report.dart';
import 'Sidhant/pages/pos_pricing.dart';
import 'Transaction.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<Widget> children = [
    Dashboard(),
    Customer(),
    Report(),
    Transaction(),
    Order(),
    Payment(),
    ProductDetails(),
    OrderDetailsScreen(),
    Pricing(),
    Dummy(),
    Pricing(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            children: [
              Row(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Container(
          // child: Center(
          //   child: Text('Home Page'),
          // ),

          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Container(
                          //   height: 40,
                          //   alignment: Alignment.topCenter,
                          //   padding: EdgeInsets.all(1),
                          //   child: SizedBox(
                          //     width: 30,
                          //     height: 30,
                          //     child: Image.asset(
                          //       'assets/mac_tools.png',
                          //       color: Colors.grey,
                          //     ),
                          //   ),
                          // ),
                          // IconButton(onPressed: (){},
                          // icon: Icons.home),
                          SizedBox(
                            height: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              //Dashboard();
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.cabin,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            tooltip: 'open shops',
                            onPressed: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => const AnotherPage(),
                              //   ),
                              // );
                              setState(() {
                                selectedIndex = 1;
                              });
                            },

                            //padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 2;
                              });
                            },
                            icon: Icon(
                              Icons.currency_exchange,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 3;
                              });
                            },
                            icon: Icon(
                              Icons.notes,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 4;
                              });
                            },
                            icon: Icon(
                              Icons.book_online,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 5;
                              });
                            },
                            icon: Icon(
                              Icons.message_sharp,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 6;
                              });
                            },
                            icon: Icon(
                              Icons.chat_rounded,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 7;
                              });
                            },
                            icon: Icon(
                              Icons.pages,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 8;
                              });
                            },
                            icon: Icon(
                              Icons.book,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          SizedBox(
                            height: 90,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 9;
                              });
                            },
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 10;
                              });
                            },
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                            ),
                            iconSize: 15,
                            padding: EdgeInsets.symmetric(vertical: 10),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 29,
                  child: Scaffold(
                    body: children[selectedIndex],
                  )),
            ],
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // DrawerList(),
              ],
            ),
          ),
        ));
  }
}
