# DevFolio App

Carteira & portfólio do desenvolvedor mobile, feito em **Flutter** como projeto final do curso
**Programação para Dispositivos Móveis (PPDM)** — turma t2dev-t3.

## Telas

| Perfil & Crachá | Dashboard de Projetos |
|---|---|
| ![Perfil](screenshots/perfil.png) | ![Dashboard](screenshots/dashboard.png) |

## Funcionalidades

- **Perfil & Crachá**: `CircleAvatar`, dados pessoais, `LinearGradient`, bordas e chips de habilidades.
- **Dashboard**: `GridView.count` com blocos de estatística em `Card` (`elevation`), selos sobrepostos com `Stack` e `Positioned`, seções com `Row`/`Column`/`Expanded`.
- **Tema central** com `ThemeData` (`lib/theme/app_theme.dart`).
- **Sem erros de overflow**: telas roláveis, textos com `maxLines`/`ellipsis`, `FittedBox` e `Wrap`.

## Estrutura

```
lib/
├── main.dart
├── theme/app_theme.dart
├── screens/
│   ├── perfil_screen.dart
│   └── dashboard_screen.dart
└── widgets/
    ├── bloco_estatistica.dart
    ├── cracha_perfil.dart
    ├── habilidade_chip.dart
    ├── secao_titulo.dart
    └── selo_destaque.dart
```

## Como executar

```bash
flutter pub get
flutter run -d web-server --web-port 8080
```

Abra `http://localhost:8080` no navegador.

## Tecnologias

Flutter · Dart · Material Design 3 · Git/GitHub

## Autoria

Projeto em dupla — PPDM, 2026. Referência: documentação oficial do Flutter (docs.flutter.dev).
