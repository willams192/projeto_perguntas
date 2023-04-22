import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  final TextStyle estilo;

  const Questao(this.texto, {required this.estilo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      child: Text(
        texto,
        style: estilo ?? TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
