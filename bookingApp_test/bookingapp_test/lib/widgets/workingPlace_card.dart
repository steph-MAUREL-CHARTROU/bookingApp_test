import 'package:bookingapp_test/datas/data.dart';
import 'package:bookingapp_test/models/workingPlace_model.dart';
import 'package:flutter/material.dart';

class WorkingPlaceCard extends StatelessWidget {
  final WorkingPlace workingPlace;

  WorkingPlaceCard({this.workingPlace});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(workingPlace.image),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, workingPlace.routeName);
                },
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                color: Colors.black54,
                child: Text(
                  workingPlace.name,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
