import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
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
  void _pressionar() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // for (var textoRep in repostas ) {
    //   widgets.add(Resposta(textoRep, _pressionar));
    // }

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: temPerguntaSelecionada
          ? Questionario(
              perguntaSelecionada: _perguntaSelecionada,
              perguntas: _perguntas,
              pressionar: _pressionar)
          : const Resultado('Parabéns'),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
