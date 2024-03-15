import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Componentes', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: HomePageTemp(),
      ),
    );
  }
}



