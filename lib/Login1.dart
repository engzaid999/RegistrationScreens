import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
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
      body: Theme(
        data: ThemeData(
          fontFamily: 'Montserrat',
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ian.jpg"),
                      fit: BoxFit.cover)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      letterSpacing: 1
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Sign in to your account",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _form(context),

                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Don\'t have an account?  ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Create One",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                              fontSize: 16,
                              color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Key _key = GlobalKey<FormState>();

  Widget _form(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .40,
      margin: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Stack(
          children: <Widget>[
            Form(
              key: _key,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'email@address.com',
                        hintStyle: TextStyle(fontSize: 14),
                        labelText: 'Your email',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: '************',
                        hintStyle: TextStyle(fontSize: 14, letterSpacing: 2),
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        )),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot password",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.red),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Transform.translate(
                offset: Offset(20, 20),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
