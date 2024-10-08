import 'package:flutter/material.dart';

class TextResultado extends StatelessWidget {
  const TextResultado({
    super.key,
    required double resultado,
  }) : _resultado = resultado;

  final double _resultado;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child:  Text(
        "R\$ ${_resultado.toStringAsFixed(2)}",
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}