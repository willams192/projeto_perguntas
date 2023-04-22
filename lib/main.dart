import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _pressionar() {
    setState(() {
      _perguntaSelecionada++;
    });
    // ignore: avoid_print
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual seu anime favorito?',
        'resposta': [
          'Naruto',
          'Boruto',
          'Boku no Hero Academia',
          'Sword Art Online',
          'Jaspion'
        ],
      },
      {
        'texto': 'Qual é o seu personagem de anime favorito?',
        'resposta': ['Naruto ', 'Goku', 'Sasuke', 'Luff', 'Midoriya'],
      },
      {
        'texto': 'Qual é o seu vilão favorito',
        'resposta': [
          'Shigaraki',
          'Madara Uchicha',
          'Orochimaru',
          'Cell',
          'Quinella'
        ],
      },
    ];

    List<Widget> respostas = [];

    for (var textoRep in perguntas[_perguntaSelecionada].cast()['resposta']) {
      respostas.add(Resposta(textoRep, _pressionar));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString(),
                estilo: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            ...respostas,
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
