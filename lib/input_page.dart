import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bimi_calc/resuable_card.dart';
import 'package:bimi_calc/cardContent.dart';
import 'constants.dart';

enum GenderType { MALE, FEMALE }

int height = 180;
int weight = 60;
int age = 18;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: reusableCard(
                    colour: activeCardclr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: labelTextSyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kbigTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: RoundIconButton(
                                  child: Icon(FontAwesomeIcons.minus),
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                            ),
                            Expanded(
                                child: RoundIconButton(
                              child: Icon(FontAwesomeIcons.plus),
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: reusableCard(
                    colour: activeCardclr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: labelTextSyle,
                        ),
                        Text(
                          age.toString(),
                          style: kbigTextStyle,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RoundIconButton(
                                child: Icon(FontAwesomeIcons.minus),
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                                child: RoundIconButton(
                              child: Icon(FontAwesomeIcons.plus),
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ))
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/result_page');
              },
              child: Container(
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: kbigButtontextStyle,
                  ),
                ),
                color: bottomContainerclr,
                height: bottmContainerHeight,
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
              ),
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  // const RoundIconButton({Key? key}) : super(key: key);

  RoundIconButton({@required this.child, this.onPress});
  final Widget? child;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
