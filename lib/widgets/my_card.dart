import 'package:flutter/material.dart';
import 'package:imc/constants.dart';

class MyCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 5.0),
      decoration: BoxDecoration(
        color: kActiveCardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
    );
  }
}
