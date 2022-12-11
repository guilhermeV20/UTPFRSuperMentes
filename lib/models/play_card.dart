import 'package:intl/intl.dart';

class PlayCard {
  final int id;
  final String name;
  final List<double> attributes;
  final List<String> curiosities;

  const PlayCard({
    required this.id,
    required this.name,
    required this.attributes,
    this.curiosities = const [],
  });

  double getAttribute(int index) {
    return attributes[index];
  }

  String getAttributeString(int index) {
    return NumberFormat.decimalPattern().format(attributes[index]);
  }

  bool greaterThan(PlayCard other, int index) {
    return attributes[index] > other.attributes[index];
  }
}
