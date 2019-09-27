import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componenete Temporal'),
      ),
      body: ListView(
        children: _crearItemsCorta() 
      ),
    );
  }

  

 /* List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
    
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
          ..add(Divider());
    }

    return lista;
  }
  */

    List<Widget> _crearItemsCorta() {
      
      return opciones.map( (item){

        return Column(
          children: <Widget>[
            ListTile(
              title: Text(item + "!"),
              subtitle: Text('Something of something in Dart'),
              leading: Icon(Icons.account_balance_wallet),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
            ),
            Divider()

          ],
        );

      }).toList();

    }

}