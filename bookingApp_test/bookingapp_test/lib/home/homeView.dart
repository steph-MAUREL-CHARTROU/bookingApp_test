import 'package:bookingapp_test/widgets/drawerApp.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acelys Booking Bench'),
        backgroundColor: Colors.red[900],
      ),
      drawer: DrawerApp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(50),
              height: 300,
              child: Stack(
                children: [
                  Ink.image(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/booking');
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        primary: Colors.white,
                        backgroundColor: Colors.red[900],
                        textStyle: TextStyle(fontSize: 20)),
                    child: Text('Réserver'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
