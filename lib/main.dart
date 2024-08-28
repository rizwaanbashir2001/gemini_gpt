import 'package:flutter/material.dart';
import 'package:gemini_gpt/pages/onboarding.dart';
import 'package:gemini_gpt/themes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightMode,
        darkTheme: darkMode,
        home: Onboarding()
    );
  }
}
