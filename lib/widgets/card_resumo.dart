import 'package:flutter/material.dart';

/// Card de resumo usado dentro de Row + Expanded.
class CardResumo extends StatelessWidget {
  final String titulo;
  final String detalhe;
  final IconData icone;

  const CardResumo({
    super.key,
    required this.titulo,
    required this.detalhe,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icone),
            const SizedBox(height: 8),
            Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(detalhe, maxLines: 1, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
