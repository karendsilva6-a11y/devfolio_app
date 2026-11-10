import 'package:flutter/material.dart';

class HabilidadeChip extends StatelessWidget {
  final String nome;

  const HabilidadeChip({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        nome,
        style: const TextStyle(
          color: Color(0xFF4A00E0),
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Colors.white,
      side: BorderSide.none,
    );
  }
}