# Semana 3 — Polimento, Refatoração & README (4,0 pts)
Datas: 10/11 (terça) e 16/11 (segunda)

## 10/11 — Eixos, overflow e ThemeData
Arquivos desta pasta (copie por cima do projeto, mantendo os caminhos):
- lib/theme/app_theme.dart  -> NOVO: ThemeData centralizado (cores, AppBar, Card, NavigationBar)
- lib/main.dart             -> usa theme: AppTheme.claro
- lib/screens/dashboard_screen.dart -> grid responsivo (LayoutBuilder: 2 colunas / 4 colunas), childAspectRatio 1.0

### Teste de overflow (obrigatório: zero erros)
1. flutter analyze
2. flutter run -d web-server --web-port 8080
3. Abra no navegador, redimensione a janela bem estreita (~320px) e bem larga
4. Console (F12) NÃO pode mostrar "RenderFlex overflowed"
5. Se aparecer: envolva o widget em Flexible/Expanded, ou use SingleChildScrollView/Wrap/ellipsis

### Checklist de eixos de alinhamento
- [ ] Row/Column com mainAxisAlignment e crossAxisAlignment definidos
- [ ] Textos longos com maxLines + overflow: TextOverflow.ellipsis
- [ ] Telas dentro de SingleChildScrollView

### Commits 10/11
git add lib/theme lib/main.dart
git commit -m "style: ThemeData centralizado em lib/theme/app_theme.dart"
git add lib/screens/dashboard_screen.dart
git commit -m "fix: grid responsivo com LayoutBuilder e eliminação de overflow"

## 16/11 — README e testes finais
1. Rode o app na porta 8080/8081 e tire 2 prints (Perfil e Dashboard)
2. Salve em screenshots/perfil.png e screenshots/dashboard.png
3. Coloque o README.md desta pasta na RAIZ do repositório (já referencia os prints)
4. Ajuste a seção "Autoria" com o nome da dupla

### Commits 16/11
git add screenshots README.md
git commit -m "docs: README com descrição técnica e screenshots"
git push origin main
