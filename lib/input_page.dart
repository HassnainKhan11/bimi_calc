import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bimi_calc/resuable_card.dart';
import 'package:bimi_calc/cardContent.dart';

const bottmContainerHeight = 80.0;
const activeCardclr = Color(0xFF1D1E33);
const bottomContainerclr = Color(0xFFEB1555);
String female = 'FEMALE';
String male = 'MALE';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: reusableCard(
                    colour: activeCardclr,
                    cardChild: cardContent(
                      gender_name: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  )),
                  Expanded(
                      child: reusableCard(
                    colour: activeCardclr,
                    cardChild: cardContent(
                      gender_name: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                child: reusableCard(
              colour: activeCardclr,
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: reusableCard(
                    colour: activeCardclr,
                  )),
                  Expanded(
                      child: reusableCard(
                    colour: Color(0xff1D1E33),
                  )),
                ],
              ),
            ),
            Container(
              color: bottomContainerclr,
              height: bottmContainerHeight,
              margin: EdgeInsets.all(10.00),
              width: double.infinity,
            )
          ],
        ));
  }
}
