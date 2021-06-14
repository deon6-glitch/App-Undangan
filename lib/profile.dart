import 'select_menu.dart';
import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('DEVELOPER'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SelectFigure()),
              );
            },
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              Name(),
              NIM(),
            ],
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
      width: 290,
      height: 250,
      margin: const EdgeInsets.only(top: 45.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: DecorationImage(
          image: AssetImage('assets/deon.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "I Made Deon Virgananta",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      margin: const EdgeInsets.only(top: 40.0),
    );
  }
}

class NIM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "1915051035",
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      margin: const EdgeInsets.only(top: 10.0),
    );
  }
}
