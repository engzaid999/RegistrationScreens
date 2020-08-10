import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: 15),
          child: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff33691e).withOpacity(0.4), width: 2),
                        shape: BoxShape.circle),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/Mobilelog.svg',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                  _form(context),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      "Register now ?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff33691e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Key _key = GlobalKey<FormState>();

  _form(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
//        border: Border.all(
//          width: 3,
//          color: Color(0xff33691e),
//        ),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25),
            child: Form(
                key: _key,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'email@address.com',
                            filled: true,
                            fillColor: Color(0xff33691e).withOpacity(0.5),
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color(0xff33691e),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.transparent),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            filled: true,
                            fillColor: Color(0xff33691e).withOpacity(0.5),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff33691e),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.transparent),
                            )),
                      ),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25, top: 100),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff33691e),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff33691e),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
