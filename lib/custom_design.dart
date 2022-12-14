import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDesign extends StatefulWidget {
  const CustomDesign({Key? key}) : super(key: key);

  @override
  _CustomDesignState createState() => _CustomDesignState();
}

class _CustomDesignState extends State<CustomDesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: CustomPaint(
                size: Size(double.infinity, MediaQuery.of(context).size.height * 0.3),
                painter: RPSCustomPainter(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 23, 150, 251)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.08;


    Path path0 = Path();
    path0.moveTo(size.width,size.height*0.3);
    path0.quadraticBezierTo(size.width*0.1475000,size.height*0.0707143,size.width*0.0408333,size.height*0.3);
    path0.quadraticBezierTo(size.width*0.1091667,size.height*0.0900000,size.width*0.1441667,size.height*0.3);
    path0.quadraticBezierTo(size.width*0.2352083,size.height*0.6753571,size.width*0.4583333,size.height*0.3);
    path0.quadraticBezierTo(size.width*0.4606250,size.height*0.3396429,size.width*0.4600000,size.height*0.3);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

