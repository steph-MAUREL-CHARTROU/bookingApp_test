import 'package:bookingapp_test/booking/acelys_view.dart';
import 'package:bookingapp_test/booking/bookings_view.dart';
import 'package:bookingapp_test/home/homeview.dart';
import 'package:bookingapp_test/providers/bookingColors_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return BookingColorController();
      },
      child: Container(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => HomeView(),
            '/booking': (context) => BookingsView(),
            '/acelys': (context) => AcelysView()
          },
        ),
      ),
    );
  }
}
