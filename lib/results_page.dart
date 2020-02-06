import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/navigation_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
//  final double bmi;
//  final String result;
//  final String interpretation;
//
//  ResultsPage(
//      {@required this.bmi,
//      @required this.result,
//      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    Map<String, String> args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      args["result"].toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      args["bmi"],
                      style: kBMITextStyle,
                    ),
                    Text(
                      args["interpretation"],
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            NavigationButton(
              onTap: () => Navigator.pushNamed(context, '/'),
              buttonLabel: 'RE-CALCULATE',
            )
          ],
        ),
      ),
    );
  }
}
