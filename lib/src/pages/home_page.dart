import 'package:flutter/material.dart';
import 'package:mundig_app/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEPEA-pul Que?'),
      ),
      body: _menuOption(),
    );

  }


  Widget _menuOption() {

    return FutureBuilder(
      future:  menuProvider.cargarData(),
     initialData: [],
     builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){

       return ListView(
         children: _menuItems(snapshot.data),
       );
     },
    );

    
  }

  List<Widget> _menuItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt ['texto']),
        leading: Icon(Icons.accessibility),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.tealAccent),
        onTap: (){

        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());

    });
    return opciones;
  }


}