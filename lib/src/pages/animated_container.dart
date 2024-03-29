import 'dart:math';
import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPage createState() => _AnimatedContainerPage();
}

class _AnimatedContainerPage extends State<AnimatedContainerPage> {
  
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.blue,
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              _borderRadius =BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }
}