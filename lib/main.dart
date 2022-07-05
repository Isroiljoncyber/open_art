import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_art/open_art_ui/open_art_discover_ui.dart';
import 'package:open_art/open_art_ui/open_art_ui.dart';
import 'package:open_art/utils/routes.dart';

void main() {
  runApp(const OpenArtApp());
}

class OpenArtApp extends StatelessWidget {
  const OpenArtApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OpenArt(),
      onGenerateRoute: (setting) => Routes.generateRoute(setting),
    );
  }
}
