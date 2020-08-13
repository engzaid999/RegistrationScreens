import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login4 extends StatefulWidget {
  @override
  _Login4State createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/Gym.png',
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.5,
              child: CustomPaint(
                painter: CPainter(rPoint: .20, lPoint: .30),
                size: Size(double.infinity, double.infinity),
              ),
            ),
            CustomPaint(
              painter: CPainter(rPoint: .30, lPoint: .40),
              size: Size(double.infinity, double.infinity),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:  EdgeInsets.only(left: 30,bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login to start!',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.amber[300],
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1
                        ),
                      ),
                      SizedBox(height: 25,),
                      _form(context),
                      SizedBox(height: 25,),
                      _forgetandsignin(context),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Key _key = GlobalKey<FormState>();

  Widget _form(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 30),
      child: Row(
        children: [
          Flexible(
            child: Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'email@address.com',
                      hintStyle: TextStyle(fontSize: 12,color: Colors.white),
                      labelText: 'Your email',
                      labelStyle:
                      TextStyle(fontSize: 15, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '************',
                      hintStyle: TextStyle(fontSize: 12, letterSpacing: 2,color: Colors.white),
                      labelText: 'Password',
                      labelStyle:
                      TextStyle(fontSize: 15, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0,28),
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                color: Colors.amber[300],
                shape: BoxShape.circle
              ),
              child: Center(
                child: Text('GO',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3f51b5),
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

   Widget _forgetandsignin(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){},
          child: Text("Forgot password?",
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
                fontWeight: FontWeight.w400,
              letterSpacing: 1.1,

            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: (){},
          child: Text("SignUp",
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ],
    );
  }
}

class CPainter extends CustomPainter {
  double rPoint;
  double lPoint;

  CPainter({this.rPoint, this.lPoint});

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, size.height * 0.45, size.width, size.height);
    Gradient gradient = LinearGradient(colors: [
      Color(0xff3f51b5),
      Color(0xff7986cb),
    ], stops: [
      0.2,
      0.8
    ]);
    Paint paint = Paint();
    paint.shader = gradient.createShader(rect);

    Path path = Path();
    path.lineTo(0, size.height * rPoint);
    path.lineTo(size.width / 2 * 1.5, size.height * .55);
    path.lineTo(size.width, size.height * lPoint);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
