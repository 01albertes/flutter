import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomeP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componenetes'),
        ),
        body: _lista(),
    );
  }

  Widget _lista() {

  //    print(menuProvider.opciones);
  //    menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder:(BuildContext context, AsyncSnapshot<List<Dynamic>> snapshot ) {

         return ListView(
         children: _listaItems( snapshot.data),
         ); 
      },
    );    
    
   

  }

  List<Widget> _listaItems( List<dynamic> data) {

    final List<Widget> opciones = [];

    data.forEach( (opt) {
      final widgetTemporal = ListTile(
        title: Text( opt['texto']),
        leading: Icon(Icons.account_circle, color: Colors.blue,),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){

        },
      );

      opciones..add(widgetTemporal)
              ..add( Divider( ));

    });

  }
}