
import 'package:flutter/material.dart';
import '../widgets/chip_habilidade.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevFolio'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Crachá do desenvolvedor
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF240046),
                        Color(0xFF5A189A),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: const Color(0xFF4CC9F0),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 48,
                        backgroundColor: Color(0xFF4CC9F0),
                        child: Icon(
                          Icons.person,
                          size: 55,
                          color: Color(0xFF240046),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Karen Fizio',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Desenvolvedora Mobile em formação',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.verified,
                              color: Color(0xFF4CC9F0),
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                'Crachá do Desenvolvedor',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Sobre mim',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF240046),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sou estudante de Desenvolvimento de Sistemas '
                  'e estou aprendendo a criar aplicativos e '
                  'soluções utilizando tecnologia.',
                  style: TextStyle(fontSize: 14, height: 1.5),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Minhas habilidades',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF240046),
                  ),
                ),
                const SizedBox(height: 10),

                const Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    ChipHabilidade(texto: 'Flutter'),
                    ChipHabilidade(texto: 'Dart'),
                    ChipHabilidade(texto: 'HTML e CSS'),
                    ChipHabilidade(texto: 'JavaScript'),
                    ChipHabilidade(texto: 'PHP'),
                    ChipHabilidade(texto: 'MySQL'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
