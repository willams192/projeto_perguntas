import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String res;

  const Resultado(this.res, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        res,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
