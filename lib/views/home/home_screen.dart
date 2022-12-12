import 'package:flutter/material.dart';
import 'package:supermentes/shared/buttons.dart';
import 'package:supermentes/shared/containers.dart';
import 'package:supermentes/views/credits/credits_screen.dart';
import 'package:supermentes/views/difficult/difficult_screen.dart';
import 'package:supermentes/views/rules/rules_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          const SizedBox(height: 64),
          Image.asset(
            'assets/images/logo.png',
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 32),
          SimpleButton(
            text: "Jogar",
            onPressed: () {
              Navigator.of(context).pushNamed(DifficultScreen.routeName);
            },
          ),
          const SizedBox(height: 16),
          SimpleButton(
            text: "Regras",
            onPressed: () {
              Navigator.of(context).pushNamed(RulesScreen.routeName);
            },
          ),
          const SizedBox(height: 16),
          SimpleButton(
            text: "Creditos",
            onPressed: () {
              Navigator.of(context).pushNamed(CreditsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
