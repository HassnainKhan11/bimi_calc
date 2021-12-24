import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Widget? cardChild;
  final Color colour;

  reusableCard({required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        // color: Color(0xff1D1E33),
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
