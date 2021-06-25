// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class TouchablePlan extends StatefulWidget {
//   @override
//   _TouchablePlanState createState() => _TouchablePlanState();
// }

// class _TouchablePlanState extends State<TouchablePlan> {
//  // ui.Image? image;

//   @override
//   void initState() {
//     super.initState();
//     loadImage('assets/images/planDuDev.jpg');
//   }

//   Future loadImage(String path) async {
//     final data = await rootBundle.load(path);
//     final bytes = data.buffer.asUint8List();
//     final image = await decodeImageFromList(bytes);

//     setState(() => this.image = image);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: image == null
//             ? CircularProgressIndicator()
//             : Container(
//                 height: 300,
//                 width: 300,
//                 child: CustomPaint(
//                   painter: ImagePainter(image),
//                 ),
//               ),
//       ),
//     );
//   }
// }

// class ImagePainter extends CustomPainter {
//   final ui.Image image;
//   const ImagePainter(this.image);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint();

//     canvas.drawImage(image, Offset.zero, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
