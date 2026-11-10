import 'package:flutter/material.dart';

/// Coloca um selo no canto superior direito de qualquer widget (Stack + Positioned).
class SeloDestaque extends StatelessWidget {
  final Widget child;
  final String texto;

  const SeloDestaque({super.key, required this.child, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: child),
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              texto,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}