import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Login7 extends StatefulWidget {
  @override
  _Login7State createState() => _Login7State();
}

class _Login7State extends State<Login7> {

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/sunday.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              margin: EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black38,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: FlutterLogo(
                            size: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Enjoy the trip with me ',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _signUp();
                                  });
                                },
                                child: Buttons(
                                  title: 'Sign up',
                                  background: Colors.blueAccent,
                                  titleColor: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _signIn();
                                  });
                                },
                                child: Buttons(
                                  title: 'Sign in',
                                  background: Colors.white,
                                  titleColor: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _signUp() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            height: 450,
            color: Color(0xff636363),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, right: 40, left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New\nAccount',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.blueAccent,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.black54,
                                    size: 35,
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Upload picture',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _formSignUp(context),
                ],
              ),
            ),
          );
        });
  }

  Key _key = GlobalKey<FormState>();

  Widget _formSignUp(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Form(
          key: _key2,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.black54),
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.black54,
                  ),
                  hintText: '  email@address.com',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
                  labelText: '  Your email',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black54),
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black54,
                  ),
                  hintText: '  Name',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
                  labelText: '  Username',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black54),
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.black54,
                  ),
                  hintText: '  Password',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
                  labelText: '  Password',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Buttons(
                    title: 'Sign up',
                    background: Colors.blueAccent,
                    titleColor: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }

/////////////////////////

  void _signIn() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            height: 450,
            color: Color(0xff636363),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, right: 40, left: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Welcome back\nZaid',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/zaid.jpg'),
                        ),
                      ],
                    ),
                  ),
                  _formSignIn(context),
                ],
              ),
            ),
          );
        });
  }

  Key _key2 = GlobalKey<FormState>();

  Widget _formSignIn(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.black54),
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Colors.black54,
                  ),
                  hintText: '  email@address.com',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
                  labelText: '  Your email',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(color: Colors.black54),
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.black54,
                  ),
                  hintText: '  **********',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black54),
                  labelText: ' Password',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: () {},
                child: Buttons(
                  title: 'Sign in',
                  background: Colors.blueAccent,
                  titleColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Or sign in with ',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54
              ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.google,size: 30,color: Colors.black54,),
                  SizedBox(width: 20,),
                  FaIcon(FontAwesomeIcons.facebook,size: 30,color: Colors.black54,),
                  SizedBox(width: 20,),
                  FaIcon(FontAwesomeIcons.twitter,size: 30,color: Colors.black54,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  String title;
  Color background;
  Color titleColor;

  Buttons(
      {@required this.title,
      @required this.background,
      @required this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, color: titleColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
