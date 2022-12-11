import 'package:flutter/material.dart';
import 'package:supermentes/shared/buttons.dart';

class EndModal extends StatelessWidget {
  final String text;

  const EndModal({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 256,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Theme.of(context).colorScheme.secondary,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(text),
              const SizedBox(height: 16),
              SimpleButton(
                text: "Voltar ao menu",
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
