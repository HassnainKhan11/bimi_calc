import 'package:bimi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'resuable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
                child: Container(
              margin: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              colour: activeCardclr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: resultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kbmiTextstyle,
                  ),
                  Text(
                    'Your BMI result is quite normal, keep it up!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/result_page');
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE ',
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
      ),
    );
  }
}
