import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componenete Temporal'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("ListTile Title"),
          ),
          Divider(),
          ListTile(
            title: Text('ListTile Title'),
          ),
          ListTile(
            title: Text('ListTile Title'),
          )
        ],
      ),
    )
  }
}