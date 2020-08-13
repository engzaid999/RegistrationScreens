import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login3 extends StatefulWidget {
  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> {

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
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/girl2.jpg',fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          ),
          SafeArea(
            child: Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  _form(context),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 8,),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Don\'t have an account?",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 8,),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Create one.",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }

  Key _key = GlobalKey<FormState>();

  Widget _form(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .40,
      child: Padding(
        padding:  EdgeInsets.only(right: 100),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Form(
                  key: _key,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'email@address.com',
                          hintStyle: TextStyle(fontSize: 14,color: Colors.white),
                          labelText: 'Your email',
                          labelStyle:
                          TextStyle(fontSize: 18, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '************',
                          hintStyle: TextStyle(fontSize: 14, letterSpacing: 2,color: Colors.white),
                          labelText: 'Password',
                          labelStyle:
                          TextStyle(fontSize: 18, color: Colors.white),
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

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Color(0xfff9e26d),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 8,),
                              Icon(Icons.arrow_forward,size: 18,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
