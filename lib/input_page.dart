import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bimi_calc/resuable_card.dart';
import 'package:bimi_calc/cardContent.dart';
import 'constants.dart';

enum GenderType { MALE, FEMALE }

int height = 180;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: reusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = GenderType.MALE;
                      });
                    },
                    colour: selectedgender == GenderType.MALE
                        ? activeCardclr
                        : inactiveCardclr,
                    cardChild: cardContent(
                      gender_name: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  )),
                  Expanded(
                      child: reusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = GenderType.FEMALE;
                      });
                    },
                    colour: selectedgender == GenderType.FEMALE
                        ? activeCardclr
                        : inactiveCardclr,
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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelTextSyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kbigTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextSyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      })
                ],
              ),
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
