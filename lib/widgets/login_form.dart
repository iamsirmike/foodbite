import 'package:flutter/material.dart';

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
        borderSide: BorderSide(width: 1, color: Color(0xffEB5C43)),
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
        print('yaaay');
      },
      child: Text(
        'Register',
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
        'Register with Google',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color(0xffEB5C43),
        ),
      ),
    ),
  );
}
