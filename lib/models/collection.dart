import 'package:supermentes/models/play_card.dart';

class Collection {
  final int id;
  final String name;
  final String description;
  final List<String> attributes;
  final List<PlayCard> cards;

  const Collection({
    required this.id,
    required this.name,
    required this.description,
    required this.attributes,
    required this.cards,
  });

  List<PlayCard> getShuffledCards() {
    return List.from(cards)..shuffle();
  }

  List<int> cardAttributesPositions(PlayCard card) {
    final List<int> positions = List.generate(attributes.length, (index) => 1);
    for (int i = 0; i < attributes.length; i++) {
      for (var c in cards) {
        if (c.attributes[i] > card.attributes[i]) {
          positions[i]++;
        }
      }
    }
    return positions;
  }
}
