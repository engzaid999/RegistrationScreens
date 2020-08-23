import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration/Login8/LoginScreen.dart';
import 'package:registration/Login8/signUpScreen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.francoisOne().fontFamily,
      ),
      child: Scaffold(
        backgroundColor: Color(0xff012A4A),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            CustomPaint(
              painter: CustomDraw(),
              size: Size(double.infinity, double.infinity),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 25,bottom: 25),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome!',
                    style: TextStyle(
                      fontSize: 45,
                      color: Color(0xffFF8667),
                      fontWeight: FontWeight.bold
                    ),
                    ),

                    Text('Nice to see you again ',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30,),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        color: Color(0xffFF8667),
                        child: Container(
                            margin: EdgeInsets.only(left: 15, right: 15),
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:  EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account? ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUpScreen()));
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Color(0xffFF8667),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CustomDraw extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    ///1
    Paint paint1 = Paint();
    paint1.color = Color(0xffFF8667).withOpacity(0.3);
    
    Path path1 =Path();
    path1.lineTo(0, 0);
    path1.lineTo(0, size.height * .5);
    path1.quadraticBezierTo(size.width  , size.height * .6 , size.width, size.height * .05);
    path1.lineTo(size.width, size.height);
    path1.lineTo(0, size.height);
    path1.close();

    canvas.drawPath(path1, paint1);

    /// 2
    Paint paint2 = Paint();
    paint2.color = Color(0xffFF8667).withOpacity(0.4);
    Path path2 =Path();
    path2.lineTo(0, 0);
    path2.lineTo(0, size.height * .6);
    path2.quadraticBezierTo(size.width  , size.height * .6 , size.width, size.height * .1);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);
    path2.close();

    canvas.drawPath(path2, paint2);

    /// 3
    Paint paint3 = Paint();
    paint3.color = Color(0xffFF8667);
    Path path3 =Path();
    path3.lineTo(0, 0);
    path3.lineTo(0, size.height * .3);
    path3.quadraticBezierTo(size.width *.5 , size.height * .7  , size.width, size.height * .60);
    path3.lineTo(size.width, size.height);
    path3.lineTo(0, size.height);
    path3.close();

    canvas.drawPath(path3, paint3);


    /// 4
    Paint paint4 = Paint();
    paint4.color = Colors.white;
    Path path4 =Path();
    path4.lineTo(0, 0);
    path4.lineTo(0, size.height * .75);
    path4.quadraticBezierTo(size.width *.2 , size.height  , size.width, size.height * .70);
    path4.lineTo(size.width, size.height);
    path4.lineTo(0, size.height);
    path4.close();

    canvas.drawPath(path4, paint4);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}
