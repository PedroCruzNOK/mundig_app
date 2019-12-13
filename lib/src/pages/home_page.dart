import 'package:flutter/material.dart';
import 'package:mundig_app/src/providers/menu_provider.dart';
import 'package:mundig_app/src/utils/icono_string_util.dart';

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
         children: _menuItems(snapshot.data, context),
       );
     },
    );

    
  }

  List<Widget> _menuItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt ['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.tealAccent),
        onTap: (){
          
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());

    });
    return opciones;
  }


}