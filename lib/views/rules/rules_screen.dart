import 'package:flutter/material.dart';
import 'package:supermentes/shared/buttons.dart';
import 'package:supermentes/shared/containers.dart';

class RulesScreen extends StatefulWidget {
  static String routeName = "/rules";

  const RulesScreen({Key? key}) : super(key: key);

  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 64),
          Image.asset(
            'assets/images/logo.png',
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 32),
          const Text(
            "Regras",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "1. O jogador que tiver menos cartas começará a jogar;\n"
              "2. Quando um jogador ficar sem cartas, o jogador que estiver sem cartas perde;\n"
              "3. O jogador escolhe um atributo e compara com o da carta do computador, o maior ganha a carta;\n"
              "4. Em caso de atributos com valroes iguais a defesa ganha.",
            ),
          ),
          const SizedBox(height: 64),
          SimpleButton(
            text: "Voltar",
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
