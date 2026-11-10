import 'package:flutter/material.dart';
import 'selo_destaque.dart';

/// Bloco de estatística: Card Material com elevation e selo sobreposto opcional.
class BlocoEstatistica extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData icone;
  final Color cor;
  final String? selo;

  const BlocoEstatistica({
    super.key,
    required this.titulo,
    required this.valor,
    required this.icone,
    required this.cor,
    this.selo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icone, size: 34, color: cor),
                  const SizedBox(height: 8),
                  FittedBox(
                    child: Text(
                      valor,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: cor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    titulo,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          if (selo != null)
            Positioned(
              top: 8,
              right: 8,
              child: SeloDestaque(texto: selo!),
            ),
        ],
      ),
    );
  }
}
