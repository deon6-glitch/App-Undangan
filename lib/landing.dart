import 'package:flutter/material.dart';
import 'select_menu.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Picture(),
            TextName(),
            TextDescription(),
            ContinueButton(),
          ],
        ),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'E-ULEMAN',
        style: TextStyle(
          fontFamily: "Fonts1",
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      margin: const EdgeInsets.only(top: 30.0),
    );
  }
}

class TextDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Manage Undangan Dengan Lebih Mudah',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/login.png", width: 280.0, fit: BoxFit.cover),
    );
  }
}

class ContinueButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: double.infinity,
      margin: EdgeInsets.only(top: 50),
      // ignore: deprecated_member_use
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: BorderSide(color: Colors.white, width: 2)),
        color: Colors.yellowAccent,
        textColor: Colors.black,
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 60, right: 60),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SelectFigure()),
          );
        },
        child: Text(
          "Mulai",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
    );
  }
}
