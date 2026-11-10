import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

// Se você já tem a Tela de Perfil (Semana 1), mantenha o seu main.dart e apenas
// adicione DashboardScreen como segunda tela (ex.: BottomNavigationBar).
void main() => runApp(const DevFolioApp());

class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevFolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4A00E0)),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Dashboard')),
        body: const DashboardScreen(),
      ),
    );
  }
}
