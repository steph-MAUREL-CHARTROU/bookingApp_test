import 'package:bookingapp_test/models/workingPlace_model.dart';
import 'package:bookingapp_test/widgets/drawerApp.dart';
import 'package:bookingapp_test/widgets/workingPlace_card.dart';
import 'package:flutter/material.dart';
import 'package:bookingapp_test/datas/data.dart' as data;

class BookingsView extends StatefulWidget {
  final List<WorkingPlace> workingPlaces = data.workingPlaces;
  @override
  _BookingsViewState createState() => _BookingsViewState();
}

class _BookingsViewState extends State<BookingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon lieu de travail'),
        backgroundColor: Colors.red[900],
      ),
      drawer: DrawerApp(),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: data.workingPlaces.length,
            itemBuilder: (_, i) => WorkingPlaceCard(
                  workingPlace: data.workingPlaces[i],
                )),
      ),
    );
  }
}
