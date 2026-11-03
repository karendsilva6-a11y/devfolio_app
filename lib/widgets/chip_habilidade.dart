
import 'package:flutter/material.dart';

class ChipHabilidade extends StatelessWidget {
  final String texto;

  const ChipHabilidade({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(texto),
      avatar: const Icon(
        Icons.check_circle,
        size: 16,
      ),
      backgroundColor: const Color(0xFFEDE2FA),
      side: BorderSide.none,
      labelStyle: const TextStyle(
        color: Color(0xFF5A189A),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
