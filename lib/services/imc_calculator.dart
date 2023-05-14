import 'dart:math';

import 'package:imc/constants.dart';

class IMCCalculator {
  final int taille;
  final int poids;
  final Genre genre;
  final int age;
  double? _imc;
  Random rd = Random();

  final List _imcfaible = [
    "Risque de fragilité osseuse et ostéoporose.",
    "Risque de fatigue chronique et troubles du rythme cardiaque.",
    "Risque d'affaiblissement des fonctions musculaires et de la masse musculaire.",
    "Risque de mauvaise ingestion, digestion, absorption et assimilation des aliments.",
    "Risque de faiblesse du système immunitaire (faible réponse aux lésions cutanées et infections)."
  ];
  final List _fimcfaible = [
    "Risque de fragilité osseuse et ostéoporose.",
    "Risque de fatigue chronique et troubles du rythme cardiaque.",
    "Risque d'affaiblissement des fonctions musculaires et de la masse musculaire.",
    "Risque de stérilité et complications pendant la grossesse (enfant prématuré, maigreur de l’enfant).",
    "Risque de mauvaise ingestion, digestion, absorption et assimilation des aliments.",
    "Risque de faiblesse du système immunitaire (faible réponse aux lésions cutanées et infections)."
  ];
  final List _imceleve = [
    "Risque de diabète de type II.",
    "Risque d'hypoventilation et apnées du sommeil.",
    "Risque d'hypertension artérielle et maladies cardiovasculaires.",
    "Risque de maladies articulaires (arthrose genoux et hanches).",
    "Risque de maladies dermatologiques (irritation et mycose des plis).",
  ];

  IMCCalculator(
      {required this.taille,
        required this.poids,
        required this.genre,
        required this.age});

  String calculerIMC() {
    _imc = poids / pow(taille/100, 2);
    return _imc!.toStringAsFixed(1);
  }

  String getResult() {
    if(age >= 65) {
      if ((_imc! >= 21) & (_imc! <= 25)) {
        return "Normal";
      }
    }
    if (_imc! >= 40) {
      return "Obésité massive";
    } else if (_imc! >= 35) {
      return "Obésité sévère";
    } else if (_imc! >= 30) {
      return "Obésité modérée";
    } else if (_imc! >= 25) {
      return "Surpoids";
    } else if (_imc! >= 18.5) {
      return "Normal";
    } else {
      return "Maigreur";
    }
  }

  String getInterpretation() {
    if(age >= 65) {
      if ((_imc! >= 21) & (_imc! <= 25)) {
        return "Il est nécessaire de tenir compte de l’évolution de l’IMC dans le temps : revenez encore pour calculer et vous rassurer!";
      }
    }
    if (_imc! > 30) {
      return _imceleve[rd.nextInt(_imceleve.length - 1)];
    } else if (_imc! >= 25) {
      return "Le surpoids et l’obésité représentent des facteurs de risque majeurs pour les pathologies les plus fréquentes.";
    } else if (_imc! >= 18.5) {
      return "Il est nécessaire de tenir compte de l’évolution de l’IMC dans le temps : revenez encore pour calculer et vous rassurer!";
    } else {
      return genre == Genre.FEMME
          ? _fimcfaible[rd.nextInt(_fimcfaible.length - 1)]
          : _imcfaible[rd.nextInt(_imcfaible.length - 1)];
    }
  }
}
