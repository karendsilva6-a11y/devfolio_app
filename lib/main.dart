
import 'package:flutter/material.dart';

void main() {
  runApp(const DevFolioApp());
}

class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevFolio App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const PerfilScreen(),
    );
  }
}

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevFolio | Meu Perfil'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Card(
              elevation: 8,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF283593),
                      Color(0xFF7986CB),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Foto de perfil do desenvolvedor.
                    const CircleAvatar(
                      radius: 58,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 54,
                        backgroundImage: NetworkImage(
                          'https://i.pravatar.cc/300',
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      'Seu Nome Completo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Desenvolvedor Mobile Flutter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Divider(color: Colors.white54),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sobre mim',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Sou estudante de Desenvolvimento de Sistemas, '
                      'interessado em tecnologia, criação de aplicativos '
                      'e desenvolvimento de soluções digitais.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 22),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Minhas habilidades',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Chips organizados com quebra de linha.
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: const [
                        Chip(
                          avatar: Icon(Icons.phone_android, size: 18),
                          label: Text('Flutter'),
                        ),
                        Chip(
                          avatar: Icon(Icons.code, size: 18),
                          label: Text('Dart'),
                        ),
                        Chip(
                          avatar: Icon(Icons.web, size: 18),
                          label: Text('HTML/CSS'),
                        ),
                        Chip(
                          avatar: Icon(Icons.storage, size: 18),
                          label: Text('Git/GitHub'),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.verified,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Portfólio de Desenvolvedor',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
