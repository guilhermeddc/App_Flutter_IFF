import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Instituto Feredal Farropilha'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
            ListTile(
              title: Text("Opcoes"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("CAE na Rede"),
      ),
      body: Container(
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}
