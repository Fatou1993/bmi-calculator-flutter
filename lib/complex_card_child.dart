import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComplexCardChild extends StatelessWidget {
  final int value;
  final String label;
  final Function increaseValue;
  final Function decreaseValue;

  ComplexCardChild({
    @required this.value,
    @required this.label,
    @required this.increaseValue,
    @required this.decreaseValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              iconData: FontAwesomeIcons.minus,
              onPressed: decreaseValue,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              iconData: FontAwesomeIcons.plus,
              onPressed: increaseValue,
            ),
          ],
        )
      ],
    );
  }
}
