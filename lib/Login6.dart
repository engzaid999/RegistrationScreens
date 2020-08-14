import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login6 extends StatefulWidget {
  @override
  _Login6State createState() => _Login6State();
}

class _Login6State extends State<Login6> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white70,
        body: Stack(
          children: [
            CustomPaint(
              painter: CPCircle(),
              size: Size(double.infinity, double.infinity),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 120),
                      child: Column(
                        children: [
                          Text(
                            'Welcome back to',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'BooStock',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please login to continue',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  _form(context),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

  Key _key = GlobalKey<FormState>();

  Widget _form(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'email@address.com',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.black38,
                    size: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0d47a1), width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  fillColor: Colors.white70),
            ),
            SizedBox(
              height: 2,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                  ),
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.black38,
                    size: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0d47a1), width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  fillColor: Colors.white70),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                  color: Colors.white,
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don\'t have an account?  ",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text("Create one",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xffbf360c),
                          fontSize: 14)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CPCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Circle (1)
    Paint paint1 = Paint();
    paint1.color = Color(0xff0d47a1);
    canvas.drawCircle(Offset(size.width - (size.width * .15), 40), 400, paint1);

    //Circle Shadow (1)
    Path path1 = Path();
    Offset offset1 =
        Offset(size.width - (size.width * .15) - 4, size.height * .07);

    Rect rect1 = Rect.fromCircle(center: offset1, radius: 251);
    path1.addOval(rect1);
    canvas.drawShadow(path1, Colors.black54, 6, true);

    //Circle Shadow (1-1)
    Path path11 = Path();
    Offset offset11 =
        Offset(size.width * -0.4, size.height + (size.width) * 0.01) * .85;

    Rect rect11 = Rect.fromCircle(center: offset11, radius: 335);
    path11.addOval(rect11);
    canvas.drawShadow(path11, Colors.black54, 6, true);

    ////////////////////////////////////////////////////////////////////////////////
    //Circle (1-1)
    Paint paint11 = Paint();
    paint11.color = Color(0xff01579b);
    canvas.drawCircle(
        Offset(size.width * -0.4, size.height + (size.width) * .05) * .85,
        330,
        paint11);

    //Circle Shadow (1-2)
    Path path12 = Path();
    Offset offset12 =
        Offset(size.width * -0.4, size.height + (size.width) * 0.01) * .85;

    Rect rect12 = Rect.fromCircle(center: offset12, radius: 233);
    path12.addOval(rect12);
    canvas.drawShadow(path12, Colors.black54, 6, true);


    ////////////////////////////////////////////////////////////////////////////////
    //Circle (1-2)
    Paint paint12 = Paint();
    paint12.color = Color(0xffbf360c);
    canvas.drawCircle(
        Offset(size.width * -0.4, size.height + (size.width) * .05) * .85,
        230,
        paint12);
////////////////////////////////////////////////////////////////////////////////
    //Circle (2)
    Paint paint2 = Paint();
    paint11.color = Color(0xffbf360c);
    canvas.drawCircle(
        Offset(size.width - (size.width * .15), 40), 250, paint11);

//    Circle Shadow (2)
    Path path2 = Path();
    Offset offset2 =
        Offset(size.width - (size.width * .15) - 4, size.height * .07);

    Rect rect2 = Rect.fromCircle(center: offset2, radius: 151);
    path2.addOval(rect2);
    canvas.drawShadow(path2, Colors.black54, 6, true);

////////////////////////////////////////////////////////////////////////////////
    //Circle (3)
    Gradient gradient1 = LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xff0277bd),
          Color(0xff81d4fa),
        ],
        stops: [
          0.2,
          0.4
        ]);

    //Draw Circle (3)
    Paint paint3 = Paint();
    Offset offset3 = Offset(size.width - (size.width * .15), 40);

    Rect rect3 = Rect.fromLTWH(0, 0, size.width, size.height);
    paint3.shader = gradient1.createShader(rect3);
    canvas.drawCircle(offset3, 150, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
