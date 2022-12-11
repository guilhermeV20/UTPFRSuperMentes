import 'package:flutter/material.dart';
import 'package:supermentes/routes.dart';
import 'package:supermentes/views/home/home_screen.dart';

void main() {
  runApp(const SuperMentes());
}

class SuperMentes extends StatelessWidget {
  const SuperMentes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Mentes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
