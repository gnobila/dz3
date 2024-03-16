import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {

      Random random = new Random();
      int randomNumber = random.nextInt(50);
      _counter =_counter + randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,//inversePrimary
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: <Widget>[
            Text(
              'Пользователь: Грошев В.А.',
                style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Статус: Я хотел сделать отдельным боком фио ввеху посередине, а текст с кол-вом подписчиков слева, но не разобрался как это работает',

            ),
            Text(
              'Количество подписчиков:'
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Обновить страницу',
        child: const Icon(Icons.refresh)//Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
