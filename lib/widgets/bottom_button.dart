import 'package:flutter/material.dart';
import 'package:imc/constants.dart';

class BottomButton extends StatelessWidget {

  final Function() onTap;
  final String bottomTitle;

  const BottomButton({super.key, required this.onTap, required this.bottomTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 80.0,
        padding: const EdgeInsets.only(bottom: 8.0),
        color: kBottomButtonColor,
        child: Center(child: Text(bottomTitle, style: kTitleTextStyle,)),
      ),
    );
  }
}
