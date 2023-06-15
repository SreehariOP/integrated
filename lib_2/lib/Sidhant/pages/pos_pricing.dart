import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:mac__tools/Sidhant/pages/promo_price.dart';

// ignore: unused_import

import '../components/button.dart';
import '../components/textfield.dart';

class POSPricing extends StatefulWidget {
  const POSPricing({Key? key}) : super(key: key);
  @override
  POSPricingState createState() => POSPricingState();
}

class POSPricingState extends State<POSPricing> {
  //variables
  var date = DateTime.now();
  double price = 100;
  double promoPrice = 100;
  double costPrice = 100;
  bool isSwitched = false;
  static ValueNotifier<String> enteredValue = ValueNotifier('100');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //const SideBar(),
                //
                //shop column in POS to display ,customer names etc..
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 100, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.storefront_outlined,
                            color: Colors.red,
                          ),
                          Text(
                            " Shop",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    //
                    //divider
                    SizedBox(height: 10),
                    Divider(
                      thickness: 10,
                      color: Colors.red[700],
                    ),
                    //
                    SizedBox(height: 10),
                  ],
                ),
                //
                //column to diplay item details.
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 100),
                    //
                    //display Date
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat('EEEE, MMMM d,yyyy').format(date),
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    //
                    //diffrent screens
                    Row(
                      children: [
                        MyButton(text: 'Sales'),
                        MyButton(text: 'Walk-in'),
                        MyButton(text: 'Orders'),
                        MyButton(text: 'Needs'),
                        MyButton(text: 'Invoices'),
                        MyButton(text: 'Returns'),
                      ],
                    ),
                    const SizedBox(height: 30),
                    //customers
                    //
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              side: BorderSide(
                                  color: Colors.grey, style: BorderStyle.solid),
                            ),
                            onPressed: () => const POSPricing(),
                            child: Row(
                              children: [
                                Text(
                                  "Dan Ol...",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(child: SizedBox(width: 1)),
                                Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: FloatingActionButton(
                            isExtended: true,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              side: BorderSide(
                                  color: Colors.grey, style: BorderStyle.solid),
                            ),
                            onPressed: () => const POSPricing(),
                            child: Row(
                              children: [
                                Text(
                                  "Jared ...",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(child: SizedBox(width: 1)),
                                Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              side: BorderSide(
                                  color: Colors.grey, style: BorderStyle.solid),
                            ),
                            onPressed: () => const POSPricing(),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Justin...",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(child: SizedBox(width: 1)),
                                Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 5,
                      color: Colors.grey,
                    ),

                    const SizedBox(height: 10),
                    //
                    //Sales etc.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            "Sales",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            "Collection",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            "Payment",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                    //
                    //create pricing part
                    Row(
                      children: [
                        //this will be the img of item
                        Column(
                          children: [
                            Container(
                              height: 400,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  //here is the item image
                                  Center(
                                    // ignore: sized_box_for_whitespace
                                    child: Container(
                                      width: 240,
                                      height: 210,
                                      child: const Image(
                                        image: AssetImage('images/toolbox.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        //date ordered by customer
                                        Text(
                                          DateFormat('EEEE, MMMM d,yyyy')
                                              .format(date),
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Expanded(
                                            child: SizedBox(width: 10)),
                                        //serial no.
                                        const Text(
                                          "#SBDR123SA",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    '123-PC.1/4" Hex Drive Mac-Grip Ratcheting Bit Driver Set',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        //remaining quantity
                                        Container(
                                          width: 70,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.green[100],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(6)),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              '320 pcs',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                        const Expanded(
                                            child: SizedBox(width: 10)),
                                        //price
                                        ValueListenableBuilder(
                                          valueListenable: enteredValue,
                                          builder: (BuildContext context,
                                              String newValue, child) {
                                            return Text(
                                              isSwitched
                                                  ? newValue
                                                  : price.toString(),
                                              textAlign: TextAlign.end,
                                              style: const TextStyle(
                                                fontSize: 24,
                                                color: Colors.black,
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        //pricing fields and details
                        //
                        // ignore: sized_box_for_whitespace
                        Container(
                          height: 400,
                          width: 620,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //product field
                              Row(
                                children: [
                                  //product of item search for product
                                  SizedBox(
                                    width: 350,
                                    child: MyTextField(
                                      hintText: "Product",
                                      obscureText: false,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  // button
                                ],
                              ),
                              //
                              const SizedBox(height: 20),
                              //Quantity and Price
                              Row(
                                children: [
                                  //quantity field
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 1),
                                        child: Text(
                                          "Quantity",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 350,
                                        child: MyTextField(
                                          hintText: "Quantity",
                                          obscureText: false,
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(width: 10),

                                  //price field ( this can be modified )
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 1),
                                        child: Text(
                                          "Price",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: TextField(
                                            keyboardType: const TextInputType
                                                    .numberWithOptions(
                                                decimal: true),
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter.allow(
                                                  RegExp(r'^(\d+)?\.?\d{0,2}')),
                                            ],
                                            onChanged: (value) => setState(
                                              () {
                                                if (value == '') {
                                                  price = costPrice;
                                                } else {
                                                  price = double.parse(value);
                                                }
                                              },
                                            ),
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  const OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                              ),
                                              focusedBorder:
                                                  const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  15))),
                                              fillColor: Colors.grey[300],
                                              filled: true,
                                              hintText: "Price",
                                              hintStyle: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //
                              const SizedBox(height: 10),
                              //amount fields
                              Row(
                                children: [
                                  //total amount field
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 1),
                                        child: Text(
                                          "Total Amount",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 140,
                                        child: MyTextField(
                                          hintText: "Amount",
                                          obscureText: false,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(width: 10),

                                  //discount field
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 1),
                                        child: Text(
                                          "Discount",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 140,
                                        child: MyTextField(
                                          hintText: "Discount",
                                          obscureText: false,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(width: 8),

                                  //tax field
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 1),
                                        child: Text(
                                          "Tax",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 140,
                                        child: MyTextField(
                                          hintText: "Tax",
                                          obscureText: false,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(width: 10),

                                  //Net amount field
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 1),
                                        child: Text(
                                          "Net Amount",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 140,
                                        child: MyTextField(
                                          hintText: "Amount",
                                          obscureText: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //
                              const SizedBox(height: 10),
                              //functionality buttons
                              Row(
                                children: [
                                  const Text(
                                    "Clear",
                                    style: TextStyle(
                                      fontSize: 14,
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  const Expanded(child: SizedBox(width: 300)),
                                  //Add promo price button
                                  //
                                  // ignore: sized_box_for_whitespace
                                  Container(
                                    width: 80,
                                    height: 36,
                                    child: FloatingActionButton(
                                      isExtended: true,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              surfaceTintColor: Colors.white,
                                              title: const Text(
                                                "Add Promo-price",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              //adding promo-price here
                                              content: PromoPrice(
                                                  promoPrice: promoPrice,
                                                  costPrice: costPrice),
                                              /*Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 10, 10, 5),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    const SizedBox(height: 10),
                                                    const Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        "Enter Promo-price",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 1),
                                                    TextField(
                                                      keyboardType:
                                                          const TextInputType
                                                                  .numberWithOptions(
                                                              decimal: true),
                                                      inputFormatters: <TextInputFormatter>[
                                                        FilteringTextInputFormatter
                                                            .allow(RegExp(
                                                                r'^(\d+)?\.?\d{0,2}')),
                                                      ],
                                                      onChanged: (value) =>
                                                          setState(() {
                                                        if (value == '') {
                                                          promoPrice = costPrice;
                                                        } else {
                                                          promoPrice =
                                                              double.parse(value);
                                                        }
                                                      }),
                                                      decoration: InputDecoration(
                                                        enabledBorder:
                                                            const OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.grey),
                                                        ),
                                                        focusedBorder: const OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius
                                                                        .circular(
                                                                            15))),
                                                        fillColor:
                                                            Colors.grey[300],
                                                        filled: true,
                                                        hintText: "Promo-price",
                                                        hintStyle:
                                                            const TextStyle(
                                                                color:
                                                                    Colors.grey),
                                                      ),
                                                    ),
                                                    //Profit and Loss Calculation.
                                                    const SizedBox(height: 10),
                                                    const Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        "Profit or Loss at Promo-price",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Text(
                                                      "${((promoPrice - costPrice) / costPrice) * 100} %",
                                                      textAlign: TextAlign.end,
                                                      style: const TextStyle(
                                                        fontSize: 24,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),*/
                                              actions: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10),
                                                  child: SizedBox(
                                                    width: 60,
                                                    height: 30,
                                                    child: FloatingActionButton(
                                                      isExtended: true,
                                                      backgroundColor:
                                                          Colors.red,
                                                      child: const Text(
                                                        "Done",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      backgroundColor: Colors.red,
                                      child: const Text(
                                        "Add",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  //
                                  //Togglebutton
                                  //
                                  Container(
                                    color: Colors.white,
                                    width: 80,
                                    child: Switch(
                                      inactiveThumbColor: Colors.red,
                                      inactiveTrackColor: Colors.white,
                                      activeTrackColor: Colors.red,
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = !isSwitched;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                //coulmn to display order summary
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 800,
                      width: 500,
                      padding: const EdgeInsets.fromLTRB(10, 100, 10, 30),
                      color: Colors.white,
                      child: const Image(
                        image: AssetImage('images/Column_3.png'),
                        fit: BoxFit.fill,
                      ),
                    )
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
