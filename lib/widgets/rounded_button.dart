import 'package:flutter/material.dart';
import 'package:imc/constants.dart';

class RoundedButton extends StatelessWidget {

  final Function() action;
  final IconData icon;

  const RoundedButton({required this.action, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: kInactiveCardColor,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      onPressed: action,
      child: Icon(icon, size: 40.0, color: Colors.white,),
    );
  }
}
