import 'package:flutter/material.dart';
import 'package:signature_forgery_detection/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:signature_forgery_detection/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme_Class.lightTheme,
      darkTheme: Theme_Class.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
