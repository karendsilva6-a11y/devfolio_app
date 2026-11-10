import 'package:flutter/material.dart';

/// Selo pequeno para sobreposição (usado com Stack + Positioned).
class SeloDestaque extends StatelessWidget {
  final String texto;
  final Color cor;

  const SeloDestaque({super.key, required this.texto, this.cor = Colors.amber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
