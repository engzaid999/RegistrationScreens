import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color _Orcolor = Color(0xffFF8667);
Color _Grcolor = Color(0xffDDDCDE);
Color _Blcolor = Color(0xff012B49);

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.francoisOne().fontFamily,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            CustomPaint(
              painter: _CuDraw1(),
              size: Size(double.infinity,double.infinity),
            ),

            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:  EdgeInsets.only(left: 15,top: 10),
                  child: Text(
                    'Create account ',
                    style: TextStyle(
                      fontSize: 40,
                      color: _Blcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CuDraw1 extends  CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint();
    paint.color = _Orcolor;

    Path path =Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * .45);
    path.quadraticBezierTo(size.width /2, size.height/2 * .7, size.width, size.height *0.15);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) =>false;
}
