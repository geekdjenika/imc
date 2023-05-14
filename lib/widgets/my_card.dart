import 'package:flutter/material.dart';
import 'package:imc/constants.dart';

class MyCard extends StatelessWidget {

  MyCard({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 3.0),
      decoration: BoxDecoration(
        color: kActiveCardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: child,
    );
  }
}
