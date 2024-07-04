import 'package:flutter/material.dart';
import 'package:novashopping/screens/home/constants.dart';
import 'package:novashopping/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
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
        fontFamily: "Gordita",
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
