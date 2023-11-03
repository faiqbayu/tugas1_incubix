import 'package:flutter/material.dart';
import 'package:tugas1/formulir_screen.dart';
import 'package:tugas1/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomeScren(),
        '/formulir': (context) => FormulirScreen(),
      },
    );
  }
}
