import 'package:flutter/material.dart';
import 'package:supermentes/models/collection.dart';
import 'package:supermentes/models/play_card.dart';

class CardBack extends StatelessWidget {
  final Collection collection;

  const CardBack({
    Key? key,
    required this.collection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.75,
      child: Container(
        color: const Color(0xFFF7BD0F),
        padding: const EdgeInsets.all(4),
        child: Image.asset(
          "assets/cards/b${collection.id}.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CardFront extends StatelessWidget {
  final Collection collection;
  final PlayCard card;
  final Function(int) onTap;
  final int? selected;
  final bool small;

  const CardFront({
    Key? key,
    required this.collection,
    required this.card,
    required this.onTap,
    this.selected,
    this.small = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.72,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        card.id.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    card.name,
                    style: TextStyle(
                      fontSize: small ? 14 : 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/cards/${collection.id}/${card.id}.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  for (var i = 0; i < collection.attributes.length; i++)
                    GestureDetector(
                      onTap: () {
                        onTap(i);
                      },
                      child: Row(
                        children: [
                          Text(
                            "${collection.attributes[i]}: ",
                            style: TextStyle(
                              fontSize: small ? 12 : 14,
                              fontWeight: FontWeight.bold,
                              color:
                                  selected == i ? Colors.yellow : Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            card.getAttributeString(i),
                            style: TextStyle(
                              fontSize: small ? 12 : 14,
                              color:
                                  selected == i ? Colors.yellow : Colors.black,
                            ),
                          ),
                        ],
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
