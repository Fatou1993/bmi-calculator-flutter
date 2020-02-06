import 'package:flutter/material.dart';

// key class => needed to keep track of the state of the tree
class ReusableCard extends StatelessWidget {
  final Color color;
  final Function onTap;

  ReusableCard({@required this.color, this.child, this.onTap});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
