import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ]
      )
    );
  }
  Widget _cardTipo1(){
    return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Titulo del card'),
          subtitle: Text('Esta es la descripción del card en un subtitle')
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: (){},
            ),
            TextButton(
              child: Text('Aceptar'),
              onPressed: (){},
            )
          ],
        )
      ]
    ),
  );
  }
  
  Widget _cardTipo2(){
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://www.escapemotions.com/images/mainpage/images/blog_posts_bg/landing-page_blog_93303113643.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('keloko meriyein'),
            ),
        ]
      )
    );
    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]
      ),
    );
  }
}