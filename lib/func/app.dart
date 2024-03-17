import 'package:flutter/material.dart';
import 'package:second_project/UI/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1C:Соцсеть',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),//deepPurple
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '1C:Соцсеть'),
    );
  }
}