import 'dart:math';

import 'package:flutter/material.dart';
import 'package:supermentes/models/difficult.dart';
import 'package:supermentes/models/game_settings.dart';
import 'package:supermentes/models/play_card.dart';
import 'package:supermentes/shared/buttons.dart';
import 'package:supermentes/shared/card.dart';
import 'package:supermentes/shared/containers.dart';
import 'package:supermentes/shared/modal.dart';
import 'package:supermentes/views/play/confirm_modal.dart';
import 'package:supermentes/views/play/end_modal.dart';

class PlayScreen extends StatefulWidget {
  static String routeName = "/play";

  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  late GameSettings settings;

  List<PlayCard> player = [];
  List<PlayCard> computer = [];

  bool started = false;
  bool playerStart = false;
  late bool playerTurn;

  PlayCard? attack;
  PlayCard? defense;
  int? attribute;

  String? botMessage;

  void start() {
    settings = ModalRoute.of(context)!.settings.arguments as GameSettings;
    List<PlayCard> shuffled = settings.collection.getShuffledCards();
    if (Random().nextBool()) {
      player = shuffled.sublist(0, shuffled.length ~/ 2);
      computer = shuffled.sublist(shuffled.length ~/ 2);
      playerTurn = true;
    } else {
      computer = shuffled.sublist(0, shuffled.length ~/ 2);
      player = shuffled.sublist(shuffled.length ~/ 2);
      playerTurn = false;
    }
    started = true;
  }

  void select(int index) {
    setState(() {
      var p = player[0];
      if (!playerTurn) {
        botMessage = "Eu escolho ${settings.collection.attributes[index]}";
      } else if (p.curiosities.isNotEmpty) {
        botMessage = p.curiosities[Random().nextInt(p.curiosities.length - 1)];
      }
      player.removeAt(0);
      var c = computer[0];
      computer.removeAt(0);
      attribute = index;
      if (playerTurn) {
        attack = p;
        defense = c;
      } else {
        attack = c;
        defense = p;
      }
    });
  }

  void computerPlay() {
    var c = computer[0];
    List<int> positions = settings.collection.cardAttributesPositions(c);
    print("Computer positions: $positions");
    switch (settings.difficult) {
      case Difficult.easy:
        setState(() {
          int? i;
          for (int j = 0; j < positions.length; j++) {
            if (i == null || positions[j] > positions[i]) {
              i = j;
            }
          }
          select(i ?? 0);
        });
        break;
      case Difficult.medium:
        setState(() {
          select(Random().nextInt(settings.collection.attributes.length - 1));
        });
        break;
      case Difficult.hard:
        setState(() {
          int? i;
          for (int j = 0; j < positions.length; j++) {
            if (i == null || positions[j] < positions[i]) {
              i = j;
            }
          }
          select(i ?? 0);
        });
        break;
    }
  }

  void play() {
    if (attack == null || defense == null || attribute == null) return;
    print("Play: ${settings.collection.attributes[attribute!]}");
    print("Attack: ${attack!.name}: ${attack!.getAttributeString(attribute!)}");
    print(
        "Defense: ${defense!.name}: ${defense!.getAttributeString(attribute!)}");
    if (attack!.greaterThan(defense!, attribute!)) {
      if (playerTurn) {
        player.add(attack!);
        player.add(defense!);
        playerTurn = true;
        print("Player wins");
      } else {
        computer.add(attack!);
        computer.add(defense!);
        playerTurn = false;
        print("Computer wins");
      }
    } else {
      if (playerTurn) {
        computer.add(attack!);
        computer.add(defense!);
        playerTurn = false;
        print("Computer wins");
      } else {
        player.add(attack!);
        player.add(defense!);
        playerTurn = true;
        print("Player wins");
      }
    }
    print("PLayer: ${player.map((c) => c.name).toList()}");
    print("Computer: ${computer.map((c) => c.name).toList()}");
    setState(() {
      botMessage = null;
      attack = null;
      defense = null;
      attribute = null;
    });
    if (player.isEmpty) {
      showModal(
        context: context,
        content: const EndModal(text: "Voce perdeu!"),
      ).then((value) {
        Navigator.of(context).pop();
      });
    }
    if (computer.isEmpty) {
      showModal(
        context: context,
        content: const EndModal(text: "Voce ganhou!"),
      ).then((value) {
        Navigator.of(context).pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!started) {
      start();
    }
    if (player.isNotEmpty) {
      print(
          "Player Position: ${settings.collection.cardAttributesPositions(player[0])}");
    }
    return AppContainer(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          SizedBox(
            height: 104,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        child: Text(
                          playerTurn ? "Seu turno" : "Turno do computador",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/robot.jpg',
                  ),
                  Expanded(
                    child: Visibility(
                      visible: botMessage != null,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/images/conversa1.png',
                            fit: BoxFit.fill,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                botMessage ?? "",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (attack != null && defense != null)
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            playerTurn ? "Você" : "Computador",
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 180,
                            child: CardFront(
                              collection: settings.collection,
                              card: attack!,
                              selected: attribute,
                              small: true,
                              onTap: (index) {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        children: [
                          Text(
                            !playerTurn ? "Você" : "Computador",
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 180,
                            child: CardFront(
                              collection: settings.collection,
                              card: defense!,
                              selected: attribute,
                              small: true,
                              onTap: (index) {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: SizedBox(
                      width: 128,
                      height: 64,
                      child: SimpleButton(
                        text: "Jogar",
                        onPressed: () {
                          play();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          else
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Stack(
                      children: [
                        ...computer.reversed.map(
                          (c) => Positioned(
                            left: _cardPos(
                                computer.indexOf(c), player.length, 100),
                            child: SizedBox(
                              width: 100,
                              child: CardBack(
                                collection: settings.collection,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: MediaQuery.of(context).size.width / 2 - 100,
                          top: 16,
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.filter_none,
                                color: Colors.grey,
                                size: 48,
                              ),
                              Positioned(
                                top: 11,
                                right: 11,
                                child: Text(
                                  computer.length.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (!playerTurn)
                    Center(
                      child: SizedBox(
                        width: 128,
                        height: 64,
                        child: SimpleButton(
                          text: "Continuar",
                          onPressed: () {
                            computerPlay();
                          },
                        ),
                      ),
                    )
                ],
              ),
            ),
          SizedBox(
            height: (attack == null && defense == null) ? 300 : 250,
            child: Stack(
              children: [
                ...player.reversed.map(
                  (c) => Positioned(
                    left: _cardPos(player.indexOf(c), player.length, 200),
                    child: SizedBox(
                      width: 200,
                      child: CardFront(
                        collection: settings.collection,
                        card: c,
                        onTap: (index) async {
                          if (player.indexOf(c) != 0) return;
                          if (attack != null || defense != null) return;
                          if (!playerTurn) return;
                          bool confirm = await showModal(
                                context: context,
                                content: ConfirmAttributeSelectModal(
                                    text:
                                        "${settings.collection.attributes[index]}: ${c.getAttributeString(index)}"),
                              ) ??
                              false;
                          if (confirm) {
                            select(index);
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 16,
                  child: Stack(
                    children: [
                      const Icon(
                        Icons.filter_none,
                        color: Colors.grey,
                        size: 64,
                      ),
                      Positioned(
                        top: 14,
                        right: 14,
                        child: Text(
                          player.length.toString(),
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _cardPos(int index, int qnt, cardSize) {
    var pos = index > 5 ? 5 : index;
    return MediaQuery.of(context).size.width / 2 - cardSize / 2 - (pos * 14);
  }
}
