import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:imc/constants.dart';
import 'package:imc/widgets/my_card.dart';
import 'package:imc/widgets/rounded_button.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int _taille = 174;
  int _poids = 64;
  int _age = 26;

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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male_rounded,
                            size: 60.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'HOMME',
                            style: kTitleTextStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_sharp,
                            size: 60.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'FEMME',
                            style: kTitleTextStyle,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Taille".toUpperCase(),
                      style: kTitleTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${_taille.toString().substring(0,1)},${_taille.toString().substring(1,3)}',
                          style: kTailleTextStyle,
                        ),
                        Text(
                          "m",
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        overlayColor: const Color(0x29ff0067),
                        thumbColor: kBottomButtonColor,
                        trackHeight: 1.0,
                        thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                        value: _taille.toDouble(),
                        min: 150.0,
                        max: 210.0,
                        inactiveColor: Colors.grey,
                        onChanged: (valeur) {
                          setState(() {
                            _taille = valeur.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('POIDS', style: kTitleTextStyle,),
                          Text(_poids.toString(), style: kTailleTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundedButton(
                                icon: BootstrapIcons.dash,
                                action: () {
                                  setState(() {
                                    _poids > 25 ? _poids-- : _poids = _poids;
                                  });
                                },
                              ),
                              RoundedButton(
                                icon: BootstrapIcons.plus,
                                action: () {
                                  setState(() {
                                    _poids < 160 ? _poids++ : _poids = _poids;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('âge'.toUpperCase(), style: kTitleTextStyle,),
                          Text(_age.toString(), style: kTailleTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundedButton(
                                icon: BootstrapIcons.dash,
                                action: () {
                                  setState(() {
                                    _age > 10 ? _age-- : _age = _age;
                                  });
                                },
                              ),
                              RoundedButton(
                                icon: BootstrapIcons.plus,
                                action: () {
                                  setState(() {
                                    _age < 150 ? _age++ : _age = _age;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
