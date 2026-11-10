import 'package:flutter/material.dart';

class SecaoTitulo extends StatelessWidget {
  final String titulo;
  final IconData icone;

  const SecaoTitulo({super.key, required this.titulo, required this.icone});

  @override
  Widget build(BuildContext context) {
    final cor = Theme.of(context).colorScheme.primary;
    return Row(
      children: [
        Icon(icone, color: cor),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            titulo,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: cor),
          ),
        ),
      ],
    );
  }
}