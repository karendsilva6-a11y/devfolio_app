import 'package:flutter/material.dart';
import 'habilidade_chip.dart';

/// Crachá do desenvolvedor: avatar, dados, gradiente, borda e chips.
class CrachaPerfil extends StatelessWidget {
  final String nome;
  final String cargo;
  final String email;
  final String cidade;
  final List<String> habilidades;

  const CrachaPerfil({
    super.key,
    required this.nome,
    required this.cargo,
    required this.email,
    required this.cidade,
    required this.habilidades,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white, width: 3),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 12, offset: Offset(0, 6)),
        ],
      ),
      child: Column(
        children: [
          // Para usar foto real: backgroundImage: AssetImage('assets/foto.jpg')
          // (declare o asset no pubspec.yaml)
          CircleAvatar(
            radius: 52,
            backgroundColor: Colors.white,
            child: Text(
              _iniciais(nome),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A00E0),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text(
            nome,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(cargo, style: const TextStyle(color: Colors.white70, fontSize: 15)),
          const Divider(color: Colors.white54, height: 28),
          _linhaInfo(Icons.email_outlined, email),
          const SizedBox(height: 6),
          _linhaInfo(Icons.location_on_outlined, cidade),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            alignment: WrapAlignment.center,
            children: habilidades.map((h) => HabilidadeChip(nome: h)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _linhaInfo(IconData icone, String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icone, color: Colors.white70, size: 18),
        const SizedBox(width: 8),
        Flexible(
          child: Text(texto,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  String _iniciais(String nome) {
    final partes = nome.trim().split(' ').where((p) => p.isNotEmpty).toList();
    if (partes.isEmpty) return '?';
    if (partes.length == 1) return partes.first[0].toUpperCase();
    return (partes.first[0] + partes.last[0]).toUpperCase();
  }
}