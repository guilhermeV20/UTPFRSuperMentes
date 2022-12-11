import 'package:flutter/material.dart';

class ConfirmAttributeSelectModal extends StatelessWidget {
  final String text;

  const ConfirmAttributeSelectModal({
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
              Text("Deseja jogar com o atrubuto $text?"),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text("Sim"),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("Não"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
