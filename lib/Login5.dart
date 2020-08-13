import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login5 extends StatefulWidget {
  @override
  _Login5State createState() => _Login5State();
}

class _Login5State extends State<Login5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff152A4E),
      body: Stack(
        children: [
          CustomPaint(
            painter: CPcurves(),
            size: Size(double.infinity, double.infinity),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        Text(
                          'Welcome back to',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff152A4E)),
                        ),
                        Text(
                          'BooStock',
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xff152A4E),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/zaid.jpg'),
                          ),
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
                    borderSide: BorderSide(color: Color(0xffffb300), width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  fillColor: Colors.white),
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
                    borderSide: BorderSide(color: Color(0xffffb300), width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                  color: Color(0xffffb300),
                  child: Text('SIGN IN'),
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
                  onTap: (){

                  },
                  child: Text("Create one",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xffffb300),
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

class CPcurves extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint();
    paint1.color = Color(0xffffb300);
    Path path1 = Path();
    path1.lineTo(0, 0);
    path1.lineTo(0, size.height * .25);
    path1.quadraticBezierTo(
        size.width / 2, size.height * .55, size.width, size.height * .25);
    path1.lineTo(size.width, 0);
    path1.close();

    canvas.drawPath(path1, paint1);

    Paint paint2 = Paint();
    paint2.color = Color(0xffffe082);
    Path path2 = Path();
    path2.lineTo(0, 0);
    path2.lineTo(0, size.height * .15);
    path2.quadraticBezierTo(
        size.width / 2, size.height * .65, size.width, size.height * .15);
    path2.lineTo(size.width, 0);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
