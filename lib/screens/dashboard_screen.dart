import 'package:flutter/material.dart';
import '../widgets/bloco_estatistica.dart';
import '../widgets/card_resumo.dart';
import '../widgets/secao_titulo.dart';
import '../widgets/selo_destaque.dart';

/// Tela 02 — Dashboard de Projetos & Métricas.
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 03/11 — Grade proporcional com GridView.count
          const SecaoTitulo('Métricas de Projetos'),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.0,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              BlocoEstatistica(
                titulo: 'Projetos concluídos',
                valor: '8',
                icone: Icons.check_circle_outline,
                cor: Color(0xFF2E7D32),
                selo: 'NOVO',
              ),
              BlocoEstatistica(
                titulo: 'Em andamento',
                valor: '3',
                icone: Icons.timelapse,
                cor: Color(0xFFEF6C00),
              ),
              BlocoEstatistica(
                titulo: 'Commits no GitHub',
                valor: '120',
                icone: Icons.account_tree,
                cor: Color(0xFF4A00E0),
                selo: 'TOP',
              ),
              BlocoEstatistica(
                titulo: 'Tecnologias',
                valor: '7',
                icone: Icons.code,
                cor: Color(0xFF00838F),
              ),
            ],
          ),

          // 09/11 — Seções com Row/Column e Expanded
          const SecaoTitulo('Resumo'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                flex: 2,
                child: CardResumo(
                  titulo: 'Frontend',
                  detalhe: 'HTML, CSS, JS',
                  icone: Icons.web,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                flex: 1,
                child: CardResumo(
                  titulo: 'Mobile',
                  detalhe: 'Flutter',
                  icone: Icons.phone_android,
                ),
              ),
            ],
          ),

          // 09/11 — Sobreposição de selo (Stack + Positioned)
          const SecaoTitulo('Projeto em destaque'),
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Stack(
              children: const [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'devfolio_app',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 6),
                      Text('Portfólio mobile em Flutter com crachá e dashboard.'),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: SeloDestaque(texto: 'DESTAQUE'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
