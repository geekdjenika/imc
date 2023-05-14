import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:imc/constants.dart';
import 'package:imc/widgets/bottom_button.dart';
import 'package:imc/widgets/my_card.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.resultatIMC,
      required this.resultat,
      required this.interpretation});

  final String resultatIMC;
  final String resultat;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppbarColor,
        leading: const Icon(
          BootstrapIcons.filter_left,
          size: 30.0,
        ),
        title: Text(
          'Calcul IMC'.toUpperCase(),
          style: kTitleTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20.0),
              child: Text(
                'Votre résultat',
                style: kTitle2TextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyCard(
              color: kActiveCardColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultat,
                    style: kResultTextStyle,
                  ),
                  Text(
                    resultatIMC,
                    style: kIMCTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kInterpretationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            bottomTitle: 'Reprendre'.toUpperCase(),
          )
        ],
      ),
    );
  }
}
