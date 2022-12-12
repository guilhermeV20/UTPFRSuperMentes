import 'package:flutter/material.dart';
import 'package:supermentes/shared/buttons.dart';
import 'package:supermentes/shared/containers.dart';

class CreditsScreen extends StatefulWidget {
  static String routeName = "/credits";

  const CreditsScreen({Key? key}) : super(key: key);

  @override
  State<CreditsScreen> createState() => _CreditsScreenState();
}

class _CreditsScreenState extends State<CreditsScreen> {
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
            "Créditos",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Guilherme Veras Castagnaro Correia - 2048990",
            ),
          ),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hugo José Teixeira de Freitas - 1685899",
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "2022",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA",
            style: TextStyle(
              fontSize: 12,
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
