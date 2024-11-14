import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'src/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YGKing Mobile UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: YGColors.primary),
      ),
      home: const HomePage(),
    );
  }
}
