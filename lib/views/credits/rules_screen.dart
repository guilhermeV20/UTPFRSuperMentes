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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aqui vai o logo",
          ),
          const SizedBox(height: 32),
          const Center(
            child: Text(
              "Créditos",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Guilherme Veras Castagnaro Correia - 2048990",
          ),
          const SizedBox(height: 8),
          const Text(
            "Hugo José Teixeira de Freitas - 1685899",
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              "2022",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Center(
            child: Text(
              "UNIVERSIDADE TECNOLOGICA FEDERAL DO PARANA",
              style: TextStyle(
                fontSize: 12,
              ),
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
