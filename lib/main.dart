import 'package:flutter/material.dart';
import 'package:imc/constants.dart';
import 'package:imc/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kAppbarColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAppbarColor),
        primaryColor: kAppbarColor,
      ),
      home: const Accueil(),
    );
  }
}
