import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  final Widget? cardChild;
  final Color colour;
  final VoidCallback? onPress;

  reusableCard({required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          // color: Color(0xff1D1E33),
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
