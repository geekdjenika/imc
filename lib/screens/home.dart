import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:imc/constants.dart';
import 'package:imc/widgets/my_card.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppbarColor,
        leading: const Icon(BootstrapIcons.filter_left),
        title: Text(
          'Calcul IMC'.toUpperCase(),
          style: kTitleTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard()
                  ),
                  Expanded(
                    child: MyCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyCard(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(),
                  ),
                  Expanded(
                    child: MyCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
