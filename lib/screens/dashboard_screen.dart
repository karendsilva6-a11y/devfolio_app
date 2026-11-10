import 'package:flutter/material.dart';
import '../widgets/bloco_estatistica.dart';
import '../widgets/secao_titulo.dart';
import '../widgets/selo_destaque.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SecaoTitulo(titulo: 'Minhas estatísticas', icone: Icons.insights),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.1,
          children: const [
            BlocoEstatistica(
              valor: '12',
              rotulo: 'Projetos',
              icone: Icons.folder_open,
            ),
            SeloDestaque(
              texto: 'TOP',
              child: BlocoEstatistica(
                valor: '148',
                rotulo: 'Commits',
                icone: Icons.commit,
              ),
            ),
            BlocoEstatistica(
              valor: '6',
              rotulo: 'Tecnologias',
              icone: Icons.code,
            ),
            SeloDestaque(
              texto: 'NOVO',
              child: BlocoEstatistica(
                valor: '3',
                rotulo: 'Certificados',
                icone: Icons.workspace_premium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}