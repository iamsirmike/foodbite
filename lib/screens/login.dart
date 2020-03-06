import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //textform widget to create textfields
  TextFormField input({Icon icon, Icon sicon, String hintText, bool obscure}) {
    return TextFormField(
      style: TextStyle(color: Colors.deepOrange),
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: icon,
        suffixIcon: sicon,
        hintText: '$hintText',
        hintStyle: TextStyle(
          color: Colors.red,
        ),
        fillColor: Colors.deepOrange.shade900,
        //border color when enabled
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Colors.white10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.red.shade200),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange.shade900,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      )),
                  height: 300,
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 60.0, 0, 0),
                        child: Text(
                          'Let\'s start with login!',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150.0,
                        left: 30.0,
                        child: Opacity(
                          opacity: 1.0,

                          //OVERFLOWING CONTAINER
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            width: 300.0,
                            height: 350.0,
                            child: Column(
                              children: <Widget>[
                                //username field
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 30, 20, 20),
                                  child: input(
                                      obscure: false,
                                      icon:
                                          Icon(Icons.person, color: Colors.red),
                                      hintText: 'username'),
                                ),
                                //password field
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: input(
                                      obscure: true,
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.red,
                                      ),
                                      sicon: Icon(Icons.remove_red_eye,
                                          color: Colors.grey.shade700),
                                      hintText: 'password'),
                                ),
                                //LOGIN button (TODO: let it accept gesture, eg: onpress)
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 70, 20, 0),
                                  child: Container(
                                    height: 50.0,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.red),
                                      ),
                                      color: Colors.deepOrange.shade900,
                                      onPressed: () {
                                        print('yaaay');
                                      },
                                      child: Center(
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 200.0, 40.0, 0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'I\'ve forgotten my password',
                      style: TextStyle(
                          color: Colors.grey.shade500, fontSize: 15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.7, 0, 40.0, 0),
                  child: FlatButton(
                    onPressed: () {
                      print('I dont haave an account');
                    },
                    child: Text(
                      'I don\'t have an account',
                      style: TextStyle(
                          color: Colors.grey.shade500, fontSize: 20.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
