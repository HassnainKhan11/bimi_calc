import 'package:flutter/material.dart';
import 'constants.dart';

class cardContent extends StatelessWidget {
  final String gender_name;
  final IconData? icon;

  cardContent({required this.gender_name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender_name,
          style: labelTextSyle,
        )
      ],
    );
  }
}
