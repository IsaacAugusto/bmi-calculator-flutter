import 'package:flutter/material.dart';
import 'consts.dart';
import 'reusable_cards.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.text,
      @required this.interpretation});

  final String bmiResult;
  final String text;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your result',
                    style: kLabelNumberTextStyle.copyWith(fontSize: 35),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCards(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      text.toUpperCase(),
                      style: kLabelTextStyle.copyWith(
                          color: Colors.green, fontSize: 25),
                    ),
                    Text(
                      bmiResult,
                      style: kLabelTextStyle.copyWith(
                          color: Colors.white, fontSize: 100),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle.copyWith(
                          color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                cor: kReusableCardsColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kLabelNumberTextStyle.copyWith(fontSize: 25),
                  ),
                ),
                height: kBottomContainerHeight,
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(top: 5),
                color: kBottomContainerColor,
              ),
            )
          ],
        ));
  }
}
