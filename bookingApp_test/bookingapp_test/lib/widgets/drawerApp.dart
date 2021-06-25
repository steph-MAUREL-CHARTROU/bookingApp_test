import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Réserver un bench',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.red[900],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accueil'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          Divider(
            color: Colors.red[900],
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_rounded),
            title: Text('Réserver'),
            onTap: () {
              Navigator.pushNamed(context, '/booking');
            },
          )
        ],
      ),
    );
  }
}
