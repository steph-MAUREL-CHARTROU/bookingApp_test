import 'package:bookingapp_test/models/bench.model.dart';
import 'package:bookingapp_test/providers/bookingColors_provider.dart';
import 'package:bookingapp_test/widgets/drawerApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touchable/touchable.dart';

class AcelysView extends StatefulWidget {
  @override
  _AcelysViewState createState() => _AcelysViewState();
}

class _AcelysViewState extends State<AcelysView> {
  @override
  Widget build(BuildContext context) {
    print(' build');
    Color benchColor = Provider.of<BookingColorController>(context).benchColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prévoir mon bench !',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.red[900],
      ),
      drawer: DrawerApp(),
      body: Stack(
        children: <Widget>[
          Container(
            height: 353,
            width: 500,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/plan_1.jpg'),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            height: 353,
            width: 500,
            color: Colors.white70,
            child: CanvasTouchDetector(
              builder: (context) => CustomPaint(
                painter: MyPainter(benchColor, context),
              ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final Color benchColor;
  final BuildContext context;

  MyPainter(this.benchColor, this.context);

  Rect benchI3 = const Rect.fromLTRB(150.0, 150.0, 165.0, 177.0);
  Rect benchI2 = const Rect.fromLTRB(185.0, 150.0, 200.0, 177.0);
  Rect benchCM = const Rect.fromLTRB(220.0, 150.0, 235.0, 177.0);
  Rect benchPS = const Rect.fromLTRB(260.0, 150.0, 275.0, 177.0);
  Rect benchPS1 = const Rect.fromLTRB(293.0, 150.0, 308.0, 177.0);
  Rect benchPS2 = const Rect.fromLTRB(320.0, 150.0, 335.0, 177.0);
  Rect benchI1 = const Rect.fromLTRB(360.0, 150.0, 375.0, 175.0);
  Rect benchB3 = const Rect.fromLTRB(60.0, 205.0, 75.0, 232.0);
  Rect benchB2 = const Rect.fromLTRB(90.0, 205.0, 105.0, 232.0);
  Rect benchB1 = const Rect.fromLTRB(120.0, 205.0, 135.0, 232.0);
  Rect benchTM1 = const Rect.fromLTRB(152.0, 205.0, 167.0, 232.0);
  Rect benchTM2 = const Rect.fromLTRB(187.0, 205.0, 202.0, 232.0);
  Rect benchA4 = const Rect.fromLTRB(223.0, 205.0, 238.0, 232.0);
  Rect benchA3 = const Rect.fromLTRB(256.0, 205.0, 271.0, 232.0);
  Rect benchA2 = const Rect.fromLTRB(289.0, 205.0, 304.0, 232.0);
  Rect benchA1 = const Rect.fromLTRB(322.0, 205.0, 337.0, 232.0);

  void paint(Canvas canvas, Size size) {
    TouchyCanvas touchyCanvas = TouchyCanvas(context, canvas);
// Coté intérieur/crèche ( de gauche à droite)
// I3
    touchyCanvas.drawRect(benchI3, Paint()..color = benchColor,
        onTapDown: (details) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchI3);
    });
    //I2
    touchyCanvas.drawRect(benchI2, Paint()..color = Colors.indigo[900],
        onTapDown: (details) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchI2);
    });
    //CM
    touchyCanvas.drawRect(benchCM, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchCM);
    });
    // PS
    touchyCanvas.drawRect(benchPS, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchPS);
    });
    // PS1
    touchyCanvas.drawRect(benchPS1, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchPS1);
    });
    // PS2
    touchyCanvas.drawRect(benchPS2, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchPS2);
    });
    // I1
    touchyCanvas.drawRect(benchI1, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchI1);
    });
    //Coté extérieur/parking ( de gauche à droite)
    //B3
    touchyCanvas.drawRect(benchB3, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchB3);
    });
    //B2
    touchyCanvas.drawRect(benchB2, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchB2);
    });
    //B1
    touchyCanvas.drawRect(benchB1, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchB1);
    });
    //TM1
    touchyCanvas.drawRect(benchTM1, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchTM1);
    });

    //TM2
    touchyCanvas.drawRect(benchTM2, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchTM1);
    });
    //A4
    touchyCanvas.drawRect(benchA4, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchA4);
    });

    //A3
    touchyCanvas.drawRect(benchA3, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchA3);
    });
    //A2
    touchyCanvas.drawRect(benchA2, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchA2);
    });
    //A1
    touchyCanvas.drawRect(benchA1, Paint()..color = Colors.indigo[900],
        onTapDown: (_) {
      Provider.of<BookingColorController>(context, listen: false)
          .changeBenchColor(benchA1);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
