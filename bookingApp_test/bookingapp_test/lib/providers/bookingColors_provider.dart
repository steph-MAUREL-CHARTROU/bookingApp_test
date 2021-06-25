import 'package:bookingapp_test/models/bench.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BookingColorController extends ChangeNotifier {
  Color benchColor = Colors.indigo[900];
  bool booked = false;
  List<Bench> benches = [
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchI3',
      rect: Rect.fromLTRB(150.0, 150.0, 165.0, 177.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchI2',
      rect: Rect.fromLTRB(185.0, 150.0, 200.0, 177.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchCM',
      rect: Rect.fromLTRB(260.0, 150.0, 275.0, 177.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchPS',
      rect: Rect.fromLTRB(150.0, 150.0, 165.0, 177.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchPS1',
      rect: Rect.fromLTRB(293.0, 150.0, 308.0, 177.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchPS2',
      rect: Rect.fromLTRB(320.0, 150.0, 335.0, 177.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchI1',
      rect: Rect.fromLTRB(360.0, 150.0, 375.0, 175.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchB3',
      rect: Rect.fromLTRB(60.0, 205.0, 75.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchB2',
      rect: Rect.fromLTRB(90.0, 205.0, 105.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchB1',
      rect: Rect.fromLTRB(120.0, 205.0, 135.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchTM1',
      rect: Rect.fromLTRB(152.0, 205.0, 167.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchTM2',
      rect: Rect.fromLTRB(187.0, 205.0, 202.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchA4',
      rect: Rect.fromLTRB(223.0, 205.0, 238.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchA3',
      rect: Rect.fromLTRB(256.0, 205.0, 271.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchA2',
      rect: Rect.fromLTRB(289.0, 205.0, 304.0, 232.0),
    ),
    Bench(
      benchColor: Paint()..color = Colors.indigo[900],
      name: 'benchA1',
      rect: Rect.fromLTRB(322.0, 205.0, 337.0, 232.0),
    ),
  ];

  void changeBenchColor(rect) {
    booked = !booked;

    for (int i = 0; i <= benches.length; i++) {
      benchColor =
          benchColor == Colors.indigo[900] ? Colors.red : Colors.indigo[900];
    }

    notifyListeners();
  }
}
