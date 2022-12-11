import 'package:flutter/material.dart';
import 'package:supermentes/models/collection.dart';
import 'package:supermentes/models/difficult.dart';
import 'package:supermentes/models/game_settings.dart';
import 'package:supermentes/models/play_card.dart';
import 'package:supermentes/shared/buttons.dart';
import 'package:supermentes/shared/card.dart';
import 'package:supermentes/shared/containers.dart';
import 'package:supermentes/views/play/play_screen.dart';

class DifficultScreen extends StatefulWidget {
  static String routeName = "/difficult";

  const DifficultScreen({Key? key}) : super(key: key);

  @override
  State<DifficultScreen> createState() => _DifficultScreenState();
}

class _DifficultScreenState extends State<DifficultScreen> {
  int difficult = Difficult.easy;
  int collection = 1;

  final List<Collection> collections = const [
    Collection(
      id: 1,
      name: "Estados brasileiros",
      description: "Estados brasileiros com dados do IBGE(2010)",
      attributes: [
        "População",
        "Área",
        "Densidade",
        "PIB (milhões)",
        "IDH",
      ],
      cards: [
        PlayCard(
          id: 1,
          name: "Acre",
          attributes: [733559, 164123, 4, 16476, 0.719],
          curiosities: [
            "O Acre pertencia à Bolívia.",
            "O Brasil comprou o Acre em 1903.",
            "A capital do Acre é Rio Branco.",
          ],
        ),
        PlayCard(
          id: 2,
          name: "Alagoas",
          attributes: [3120494, 27843, 112, 63202, 0.683],
          curiosities: [
            "O nome Alagoas vem do tupi-guarani, que significa \"águas profundas\".",
            "A capital de Alagoas é Maceió.",
            "Alagoas é o estado mais seco do Brasil.",
          ],
        ),
        PlayCard(
          id: 3,
          name: "Amapá",
          attributes: [669526, 142470, 4, 18469, 0.740],
          curiosities: [],
        ),
        PlayCard(
          id: 4,
          name: "Amazonas",
          attributes: [3483985, 1559167, 2, 116019, 0.733],
        ),
        PlayCard(
          id: 5,
          name: "Bahia",
          attributes: [14016906, 564760, 24, 305321, 0.714],
        ),
        PlayCard(
          id: 6,
          name: "Ceará",
          attributes: [8452381, 148894, 56, 166915, 0.735],
        ),
        PlayCard(
          id: 7,
          name: "Distrito Federal",
          attributes: [2570160, 5760, 444, 265847, 0.850],
        ),
        PlayCard(
          id: 8,
          name: "Espírito Santo",
          attributes: [3514952, 46074, 76, 138446, 0.772],
        ),
        PlayCard(
          id: 9,
          name: "Goiás",
          attributes: [6003788, 340203, 17, 224126, 0.769],
        ),
        PlayCard(
          id: 10,
          name: "Maranhão",
          attributes: [6574789, 329642, 19, 106916, 0.687],
        ),
        PlayCard(
          id: 11,
          name: "Mato Grosso",
          attributes: [3035122, 903207, 3, 178650, 0.774],
        ),
        PlayCard(
          id: 12,
          name: "Mato Grosso do Sul",
          attributes: [2449024, 357145, 6, 122628, 0.766],
        ),
        PlayCard(
          id: 13,
          name: "Minas Gerais",
          attributes: [19597330, 586521, 33, 682786, 0.787],
        ),
        PlayCard(
          id: 14,
          name: "Pará",
          attributes: [7581051, 1245870, 6, 215936, 0.698],
        ),
        PlayCard(
          id: 15,
          name: "Paraíba",
          attributes: [3766528, 56467, 66, 70292, 0.722],
        ),
        PlayCard(
          id: 16,
          name: "Paraná",
          attributes: [10444526, 199298, 52, 487931, 0.792],
        ),
        PlayCard(
          id: 17,
          name: "Pernambuco",
          attributes: [8796448, 98067, 89, 193307, 0.727],
        ),
        PlayCard(
          id: 18,
          name: "Piauí",
          attributes: [3273227, 251756, 12, 56391, 0.697],
        ),
        PlayCard(
          id: 19,
          name: "Rio de Janeiro",
          attributes: [15989929, 43750, 365, 753824, 0.796],
        ),
        PlayCard(
          id: 20,
          name: "Rio Grande do Norte",
          attributes: [3168027, 52809, 59, 71577, 0.731],
        ),
        PlayCard(
          id: 21,
          name: "Rio Grande do Sul",
          attributes: [10693929, 281707, 37, 470942, 0.788],
        ),
        PlayCard(
          id: 22,
          name: "Rondônia",
          attributes: [1562409, 237765, 6, 51599, 0.725],
        ),
        PlayCard(
          id: 23,
          name: "Roraima",
          attributes: [450479, 223644, 2, 16024, 0.752],
        ),
        PlayCard(
          id: 24,
          name: "Santa Catarina",
          attributes: [6248436, 95730, 65, 349275, 0.808],
        ),
        PlayCard(
          id: 25,
          name: "São Paulo",
          attributes: [41262199, 248219, 166, 2377639, 0.826],
        ),
        PlayCard(
          id: 26,
          name: "Sergipe",
          attributes: [2068017, 21925, 94, 45410, 0.702],
        ),
        PlayCard(
          id: 27,
          name: "Tocantins",
          attributes: [1383445, 277466, 4, 43650, 0.743],
        ),
      ],
    ),
    Collection(
      id: 2,
      name: "JKHGFEIugeuo ouehfoehs",
      description: "Estados brasileiros com dados do IBGE(2010)",
      attributes: [
        "População",
        "Área",
        "Densidade",
        "PIB (milhões)",
        "IDH",
      ],
      cards: [
        PlayCard(
          id: 1,
          name: "Acre",
          attributes: [733559, 164123, 4, 16476, 0.719],
          curiosities: [
            "O Acre pertencia à Bolívia.",
            "O Brasil comprou o Acre em 1903.",
            "A capital do Acre é Rio Branco.",
          ],
        ),
        PlayCard(
          id: 2,
          name: "Alagoas",
          attributes: [3120494, 27843, 112, 63202, 0.683],
          curiosities: [
            "O nome Alagoas vem do tupi-guarani, que significa \"águas profundas\".",
            "A capital de Alagoas é Maceió.",
            "Alagoas é o estado mais seco do Brasil.",
          ],
        ),
        PlayCard(
          id: 3,
          name: "Amapá",
          attributes: [669526, 142470, 4, 18469, 0.740],
          curiosities: [],
        ),
        PlayCard(
          id: 4,
          name: "Amazonas",
          attributes: [3483985, 1559167, 2, 116019, 0.733],
        ),
        PlayCard(
          id: 5,
          name: "Bahia",
          attributes: [14016906, 564760, 24, 305321, 0.714],
        ),
        PlayCard(
          id: 6,
          name: "Ceará",
          attributes: [8452381, 148894, 56, 166915, 0.735],
        ),
        PlayCard(
          id: 7,
          name: "Distrito Federal",
          attributes: [2570160, 5760, 444, 265847, 0.850],
        ),
        PlayCard(
          id: 8,
          name: "Espírito Santo",
          attributes: [3514952, 46074, 76, 138446, 0.772],
        ),
        PlayCard(
          id: 9,
          name: "Goiás",
          attributes: [6003788, 340203, 17, 224126, 0.769],
        ),
        PlayCard(
          id: 10,
          name: "Maranhão",
          attributes: [6574789, 329642, 19, 106916, 0.687],
        ),
        PlayCard(
          id: 11,
          name: "Mato Grosso",
          attributes: [3035122, 903207, 3, 178650, 0.774],
        ),
        PlayCard(
          id: 12,
          name: "Mato Grosso do Sul",
          attributes: [2449024, 357145, 6, 122628, 0.766],
        ),
        PlayCard(
          id: 13,
          name: "Minas Gerais",
          attributes: [19597330, 586521, 33, 682786, 0.787],
        ),
        PlayCard(
          id: 14,
          name: "Pará",
          attributes: [7581051, 1245870, 6, 215936, 0.698],
        ),
        PlayCard(
          id: 15,
          name: "Paraíba",
          attributes: [3766528, 56467, 66, 70292, 0.722],
        ),
        PlayCard(
          id: 16,
          name: "Paraná",
          attributes: [10444526, 199298, 52, 487931, 0.792],
        ),
        PlayCard(
          id: 17,
          name: "Pernambuco",
          attributes: [8796448, 98067, 89, 193307, 0.727],
        ),
        PlayCard(
          id: 18,
          name: "Piauí",
          attributes: [3273227, 251756, 12, 56391, 0.697],
        ),
        PlayCard(
          id: 19,
          name: "Rio de Janeiro",
          attributes: [15989929, 43750, 365, 753824, 0.796],
        ),
        PlayCard(
          id: 20,
          name: "Rio Grande do Norte",
          attributes: [3168027, 52809, 59, 71577, 0.731],
        ),
        PlayCard(
          id: 21,
          name: "Rio Grande do Sul",
          attributes: [10693929, 281707, 37, 470942, 0.788],
        ),
        PlayCard(
          id: 22,
          name: "Rondônia",
          attributes: [1562409, 237765, 6, 51599, 0.725],
        ),
        PlayCard(
          id: 23,
          name: "Roraima",
          attributes: [450479, 223644, 2, 16024, 0.752],
        ),
        PlayCard(
          id: 24,
          name: "Santa Catarina",
          attributes: [6248436, 95730, 65, 349275, 0.808],
        ),
        PlayCard(
          id: 25,
          name: "São Paulo",
          attributes: [41262199, 248219, 166, 2377639, 0.826],
        ),
        PlayCard(
          id: 26,
          name: "Sergipe",
          attributes: [2068017, 21925, 94, 45410, 0.702],
        ),
        PlayCard(
          id: 27,
          name: "Tocantins",
          attributes: [1383445, 277466, 4, 43650, 0.743],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          const Text(
            "Aqui vai o logo",
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectButton(
                text: "Fácil",
                selected: difficult == Difficult.easy,
                onPressed: () {
                  setState(() {
                    difficult = Difficult.easy;
                  });
                },
              ),
              const SizedBox(width: 16),
              SelectButton(
                text: "Médio",
                selected: difficult == Difficult.medium,
                onPressed: () {
                  setState(() {
                    difficult = Difficult.medium;
                  });
                },
              ),
              const SizedBox(width: 16),
              SelectButton(
                text: "Difícil",
                selected: difficult == Difficult.hard,
                onPressed: () {
                  setState(() {
                    difficult = Difficult.hard;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 32),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 16,
            children: collections
                .map(
                  (c) => GestureDetector(
                    onTap: () {
                      setState(() {
                        collection = c.id;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color:
                              collection == c.id ? Colors.blue : Colors.black,
                        ),
                      ),
                      child: Column(
                        children: [
                          CardBack(collection: c),
                          Expanded(
                            child: Center(
                              child: Text(
                                "${c.name}\n${c.cards.length.toString()} cartas",
                                style: TextStyle(
                                  color: collection == c.id
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 32),
          SimpleButton(
            text: "Começar",
            onPressed: () {
              Navigator.pushNamed(
                context,
                PlayScreen.routeName,
                arguments: GameSettings(
                  collection:
                      collections.singleWhere((c) => c.id == collection),
                  difficult: difficult,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
