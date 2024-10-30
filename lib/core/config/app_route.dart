import 'package:flutter/material.dart';
import 'package:typewriter_demo/core/config/error/route_exception.dart';
import 'package:typewriter_demo/pages/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      default:
        throw const RouteException('Rota não encontrada');
    }
  }
}
