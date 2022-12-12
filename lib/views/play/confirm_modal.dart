import 'package:flutter/material.dart';
import 'package:supermentes/shared/buttons.dart';

class ConfirmAttributeSelectModal extends StatelessWidget {
  final String text;

  const ConfirmAttributeSelectModal({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicHeight(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Theme.of(context).colorScheme.primary,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                "Deseja jogar com o atrubuto",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 128,
                    child: SimpleButton(
                      text: "Não",
                      color: Colors.red,
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 128,
                    child: SimpleButton(
                      text: "Sim",
                      color: const Color(0xFFA5D6A7),
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
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
