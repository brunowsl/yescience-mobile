import 'package:flutter/material.dart';
import 'package:yescience/choose_app.dart';
import 'package:yescience/yescience/home.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'yescience',
      routes: {
        '/yescience': (context) => const ChooseApp(),
        '/yescience-blog': (context) =>
            const YescienceHomePage(title: 'Yescience'),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.teal[400],
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      home: const ChooseApp(),
    );
  }
}
