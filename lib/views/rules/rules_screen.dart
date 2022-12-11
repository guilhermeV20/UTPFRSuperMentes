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
        children: [
          const Text(
            "Aqui vai o logo",
          ),
          const SizedBox(height: 32),
          const Text(
            "Regras:\n"
            "Não há empates,\n"
            "O jogador que tiver menos cartas começará a jogar,\n"
            "Quando um jogador ficar sem cartas, o jogador que estiver sem cartas perde,\n"
            "O jogador escolhe um atributo e compara com o da carta do computador, o maior ganha a carta,",
          ),
          const SizedBox(height: 16),
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
