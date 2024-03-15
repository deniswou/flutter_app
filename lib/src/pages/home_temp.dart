import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatros', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = [];
    for (String opt in opciones){
      final tempWidget = ListTile(
        title: Text( opt ),
        subtitle: Text('jojojo'),
        leading: Icon(Icons.account_balance_wallet),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      );
      lista..add(tempWidget)
            ..add(Divider());
    }
    return lista;
  }
}