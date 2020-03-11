import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {

  return FutureBuilder(
    future: MenuProvider.cargarData(),
    //initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

      print('builder');
      print(snapshot.data);

      return ListView(
        children: _listaItems(),
      );
    },
  );

 // print(MenuProvider.opciones);
 /* MenuProvider.cargarData().then((opciones){
    print( '_lista' );
    print( opciones );
  });

  return ListView(
    children: _listaItems(),
  );*/
}

List<Widget>_listaItems() {

  return [
    ListTile(
      title: Text('Una cosa'),
      subtitle: Text('Cualquier cosa'),
      leading: Icon(Icons.ac_unit),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){},
    ),
    Divider(),
    ListTile(
      title: Text('Una cosa'),
      subtitle: Text('Cualquier cosa'),
      leading: Icon(Icons.ac_unit),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: (){},
    ),
    Divider(),
    ListTile( title: Text('Hola mundo'),),
    Divider(),

  ];
}
