

import 'package:flutter/material.dart';
import 'package:hasana_app/src/presentation/pages/home_page/home_page.dart';
import 'package:hasana_app/src/presentation/pages/setting_page/setting_page.dart';

class Routes {
  MaterialPageRoute? materialPageRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/homePage":
        return MaterialPageRoute(builder: (context) => const HomePage());
      case "/settingPage":
        return MaterialPageRoute(builder: (context) => const SettingPage());
    }
  }
}
