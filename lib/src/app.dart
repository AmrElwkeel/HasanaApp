import 'package:flutter/material.dart';
import 'package:hasana_app/src/presentation/pages/home_page/home_page.dart';
import 'package:hasana_app/src/routs.dart';
import 'package:hasana_app/src/utils/responsive/responsive_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Routes  routes = Routes();
    ResponsiveScreenManager.init(context);
    return MaterialApp(
      onGenerateRoute:  routes.materialPageRoute,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
