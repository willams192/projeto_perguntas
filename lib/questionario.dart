import 'package:flutter/material.dart';
import './resposta.dart';
import './questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() pressionar;

  const Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.pressionar,
      super.key});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    List<Widget> widgets =
        respostas.map((t) => Resposta(t, pressionar)).toList();

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString(),
            estilo: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        ...widgets,
      ],
    );
  }
}
