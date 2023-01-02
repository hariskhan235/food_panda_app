import 'package:flutter/material.dart';
import 'package:food_panda_app/screens/home_screen.dart';
import 'package:food_panda_app/screens/splash_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //cardTheme: CardTheme(color: Colors.amber),
        cardColor: Colors.amber,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.blueAccent, fontSize: 20),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
