# Semana 2 — Layouts Complexos & Grid (4,0 pts)
Datas: 03/11 (terça) e 09/11 (segunda)

## Arquivos (copie para dentro do projeto, mantendo os caminhos)
lib/screens/dashboard_screen.dart
lib/widgets/bloco_estatistica.dart   (Card + elevation + selo em Stack/Positioned)
lib/widgets/selo_destaque.dart
lib/widgets/card_resumo.dart         (usado em Row + Expanded)
lib/widgets/secao_titulo.dart
lib/main.dart                        (só use se NÃO tiver o seu; com Perfil, adicione o Dashboard como 2ª tela)

Código compatível com versões antigas e novas do Flutter (sem APIs recentes).

## Como ligar com a Tela de Perfil (Semana 1)
No seu main.dart, use um BottomNavigationBar com duas páginas:
  [PerfilScreen(), DashboardScreen()]
(importe: import 'screens/dashboard_screen.dart';)

## 03/11 — GridView.count + Cards
- GridView.count(crossAxisCount: 2, shrinkWrap: true, physics: NeverScrollableScrollPhysics())
- Card com elevation: 6
Commit:
  git add lib/screens/dashboard_screen.dart lib/widgets/bloco_estatistica.dart
  git commit -m "feat: dashboard de projetos com GridView.count e cards com elevation"

## 09/11 — Row/Column, Stack/Positioned e lib/widgets/
- Row com Expanded (flex 2:1)
- Selo sobreposto com Stack + Positioned
- Widgets separados em lib/widgets/
Commit:
  git add lib/widgets
  git commit -m "refactor: separa widgets reutilizáveis em lib/widgets/"
  git add lib/screens
  git commit -m "feat: seções com Row/Column e selos sobrepostos (Stack/Positioned)"

## Teste
  flutter pub get
  flutter analyze
  flutter run -d web-server --web-port 8080
