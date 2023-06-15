import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mac__tools/Sidhant/pages/pos_pricing.dart';

// ignore: must_be_immutable
class PromoPrice extends StatefulWidget {
  double promoPrice;
  double costPrice;
  PromoPrice({super.key, required this.promoPrice, required this.costPrice});
  @override
  PromoPriceState createState() =>
      // ignore: no_logic_in_create_state
      PromoPriceState(promoPrice: promoPrice, costPrice: costPrice);
}

class PromoPriceState extends State<PromoPrice> {
  double promoPrice;
  double costPrice;
  PromoPriceState({required this.promoPrice, required this.costPrice});
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
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
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}')),
            ],
            controller: textEditingController,
            onChanged: (value) => setState(() {
              if (value == '') {
                promoPrice = costPrice;
              } else {
                POSPricingState.enteredValue.value = textEditingController.text;
                promoPrice = double.parse(value);
              }
            }),
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              fillColor: Colors.grey[300],
              filled: true,
              hintText: "Promo-price",
              hintStyle: const TextStyle(color: Colors.grey),
            ),
          ),
          //Profit and Loss Calculation.
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
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
    );
  }
}
