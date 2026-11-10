import 'package:flutter/material.dart';
import '../widgets/cracha_perfil.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: CrachaPerfil(
        nome: 'Seu Nome Completo',
        cargo: 'Desenvolvedor Front-end',
        email: 'seuemail@exemplo.com',
        cidade: 'Mauá, SP',
        habilidades: ['Flutter', 'Dart', 'HTML', 'CSS', 'JavaScript', 'PHP'],
      ),
    );
  }
}