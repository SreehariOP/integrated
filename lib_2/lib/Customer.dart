import 'package:flutter/material.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Center(
    //     child: Text('Customer  and shops page'),
    //   ),
    // );
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(Icons.shop), Text('Shop')],
                      ),
                      Divider(
                        height: 10,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Text('search as shop'),
                        ],
                      ),
                      Divider(
                        height: 10,
                        thickness: 3,
                        color: Colors.grey,
                      ),
                      Row(
                        children: [Text('list with drop down')],
                      ),
                      Row(
                        children: [
                          Text('same list repeated'),
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(flex: 6, child: Container())
          ],
        ),
      ),
    );
  }
}
