import 'package:flutter/material.dart';
import 'profile.dart';
import 'home.dart';

class SelectFigure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text('E-ULEMAN'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 150),
            Select(),
            SizedBox(height: 25),
            Menu1(),
          ],
        ),
      ),
    );
  }
}

class Select extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "SELECT :",
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      margin: const EdgeInsets.only(top: 10.0),
    );
  }
}

class Menu1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blue[200]!,
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.camera_alt,
                      size: 70,
                      color: Colors.blue,
                    ),
                    Text('Uleman Scanner',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blue[200]!,
                blurRadius: 8.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Developer()),
              );
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.person_sharp,
                      size: 70,
                      color: Colors.blue,
                    ),
                    Text('Uleman Scanner',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/select.png", width: 250.0, fit: BoxFit.cover),
    );
  }
}
