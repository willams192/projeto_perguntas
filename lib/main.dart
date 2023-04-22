import 'package:flutter/material.dart';
import './questao.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _pressionar() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animal favorito'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _pressionar,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _pressionar,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _pressionar,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
