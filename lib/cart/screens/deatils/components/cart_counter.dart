import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'rounded_icon_btn.dart';

class CartCounter extends StatefulWidget {
  
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: Row(
        children: [
          RoundIconBtn(
            iconData: Icons.remove,
            // color: Colors.black38,
            press: () {
              setState(() {
                _counter -= 1;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 4),
            child: Text(
              "$_counter",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
          ),
          RoundIconBtn(
            iconData: Icons.add,
            press: () {
              setState(() {
                _counter += 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
