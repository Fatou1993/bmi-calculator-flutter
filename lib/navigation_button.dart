import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class NavigationButton extends StatelessWidget {
  final Function onTap;
  final String buttonLabel;
  const NavigationButton({
    @required this.onTap,
    @required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonLabel,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
