import 'package:flutter/material.dart';
import 'package:open_art/open_art_ui/open_art_discover_ui.dart';

class Routes {
  static const discoverPage = "/discoverPage";

  static Route<dynamic>? generateRoute(RouteSettings routerSettings) {
    try {
      Map<String, dynamic>? args =
          routerSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routerSettings.name) {
        case discoverPage:
          return MaterialPageRoute(
              builder: (context) => OpenArtDiscover(args?['title'] ?? ''));
      }
    } catch (e) {
      print("object");
    }
    return null;
  }
}
