import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';
//import 'package:second_project/UI/homepage.dart';
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
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start ,

                children: [
                  Text(
                    'Пользователь: Грошев В.А.',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start ,

                children: [
                  Text(
                    'Статус:Привет! Пока ты смотрел страницу, уже столько людей подписалось, попробуй обновить её! ',
                  ),
                ]
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Text(
                  'Количество подписчиков:'
                      '$_counter',
                  style: Theme.of(context).textTheme.headline5,
                ),
                // Image.asset('assets/image/mem.jpg'),
                //const Image(image: AssetImage('assets/image/mem.jpg'),
                // )
              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(('assets/image/mem.jpg'),
                  ),
                  //image: AssetImage('assets/image/mem.jpeg'),)
                ]
            )
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