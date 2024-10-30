import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:typewriter_demo/core/config/app_config.dart';
import 'package:typewriter_demo/core/config/app_route.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBinding(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Typewritertext Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: AppRoutes.splashScreen,
        navigatorKey: navigatorKey,
      ),
    );
  }
}
