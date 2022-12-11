import 'package:flutter/material.dart';

Future showModal({
  required BuildContext context,
  required Widget content,
}) {
  return showDialog(
    context: context,
    builder: (context) => Scaffold(
      backgroundColor: Colors.transparent,
      body: content,
    ),
  );
}
