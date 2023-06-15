import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //final Function()? onTap;
  final String text;

  const MyButton({super.key, /*required this.onTap,*/ required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
