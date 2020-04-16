import 'package:flutter/material.dart';
import 'register.dart';
// import '../widgets/login_form.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //input filed
  InputDecoration inputDecoration({Icon icon, Icon sicon, String hintText}) {
    return InputDecoration(
        prefixIcon: icon,
        suffixIcon: sicon,
        hintText: '$hintText',
        hintStyle: TextStyle(color: Color(0xffEB5C44)),
        fillColor: Color(0xffEB5C43),
        //border color when enabled
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Color(0xffE8EAEE)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xffE8EAEE)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Colors.red),
        ));
  }

  //Login Button
  Container loginButton() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(12),
        color: Color(0xffEB5C43),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(
            color: Color(0xffEB5C43),
          ),
        ),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            // If the form is valid, display a Snackbar.
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));
          }
        },
        child: Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

//login with google container
  Container googleButton() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(12),
        color: Color(0xffFCE8E6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(
            color: Color(0xffFCE8E6),
          ),
        ),
        onPressed: () {
          print('yaaay');
        },
        child: Text(
          'Login with Google',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xffEB5C43),
          ),
        ),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F4F5),
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: SafeArea(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 50, 0, 20),
                    child: Text(
                      'Let\'s start with login!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 5, 30, 30),
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter a valid username';
                            }
                            return null;
                          },
                          style: TextStyle(color: Colors.deepOrange),
                          decoration: inputDecoration(
                            icon: Icon(Icons.person, color: Color(0xffEB5C43)),
                            hintText: 'username',
                          ),
                        ),
                        SizedBox(height: 10),
                        //password field
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter valid password';
                            }
                            return null;
                          },
                          obscureText: true,
                          style: TextStyle(color: Colors.deepOrange),
                          decoration: inputDecoration(
                            hintText: 'password',
                            icon: Icon(Icons.lock, color: Color(0xffEB5C43)),
                            sicon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        //LOGIN button (TODO: let it accept gesture, eg: onpress)
                        loginButton(),
                        SizedBox(
                          height: 10,
                        ),
                        googleButton(),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.fromLTRB(45, 0, 30, 0),
                      child: Text(
                        'I\'ve forgotten my password',
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Register();
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(45, 0, 30, 0),
                      child: Text(
                        'I don\'t have an account',
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
