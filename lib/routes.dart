import 'package:flutter/widgets.dart';
import 'package:supermentes/views/credits/credits_screen.dart';
import 'package:supermentes/views/difficult/difficult_screen.dart';
import 'package:supermentes/views/home/home_screen.dart';
import 'package:supermentes/views/play/play_screen.dart';
import 'package:supermentes/views/rules/rules_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  DifficultScreen.routeName: (context) => const DifficultScreen(),
  PlayScreen.routeName: (context) => const PlayScreen(),
  RulesScreen.routeName: (context) => const RulesScreen(),
  CreditsScreen.routeName: (context) => const CreditsScreen(),
};

class RouteArguments {
  int? value;

  RouteArguments({
    this.value,
  });
}
