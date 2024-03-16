import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://deanagar.com.au/wp-content/uploads/2021/07/072-men-photography.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('DC'),
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://deanagar.com.au/wp-content/uploads/2021/07/072-men-photography.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      ),
    );
  }
}