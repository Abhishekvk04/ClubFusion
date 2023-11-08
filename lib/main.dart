import 'package:flutter/material.dart';
import 'package:collaborate/homepage.dart';

/// Flutter code sample for [ActionIconTheme].

void main() {
  runApp(const ActionIconThemeExampleApp());
}

class _CustomEndDrawerIcon extends StatelessWidget {
  const _CustomEndDrawerIcon();

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localization =
        MaterialLocalizations.of(context);
    return Icon(
      Icons.more_horiz,
      semanticLabel: localization.openAppDrawerTooltip,
    );
  }
}

class _CustomDrawerIcon extends StatelessWidget {
  const _CustomDrawerIcon();

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localization =
        MaterialLocalizations.of(context);
    return Icon(
      Icons.segment,
      semanticLabel: localization.openAppDrawerTooltip,
    );
  }
}

class ActionIconThemeExampleApp extends StatelessWidget {
  const ActionIconThemeExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        actionIconTheme: ActionIconThemeData(
          backButtonIconBuilder: (BuildContext context) {
            return const Icon(Icons.arrow_back_ios_new_rounded);
          },
          drawerButtonIconBuilder: (BuildContext context) {
            return const _CustomDrawerIcon();
          },
          endDrawerButtonIconBuilder: (BuildContext context) {
            return const _CustomEndDrawerIcon();
          },
        ),
      ),
      home: const MyHomePage(title: 'RIT Clubs Collaboration'),
    );
  }
}
