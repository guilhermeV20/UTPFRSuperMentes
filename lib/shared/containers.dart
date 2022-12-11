import 'package:flutter/material.dart';

class AppContainer extends StatefulWidget {
  final Widget child;
  final EdgeInsets padding;

  const AppContainer({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 32,
    ),
  }) : super(key: key);

  @override
  State<AppContainer> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Builder(builder: (context) {
        return SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: widget.padding,
                  child: widget.child,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
