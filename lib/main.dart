import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  var diceLeft = 1, diceRight = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DICE'),
          backgroundColor: Colors.red[600],
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text("TAP ON ANY 1 DIE FOR A SINGLE ROLL    TAP ON THE BUTTON FOR A DOUBLE ROLL",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
                ),),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: FlatButton(
                    child: Image.asset(
                      'assets/$diceLeft.png',
                    ),
                    onPressed: (){
                      setState(() {
                        diceLeft = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: FlatButton(
                    child: Image.asset(
                      'assets/$diceRight.png',
                    ),
                    onPressed: (){
                      setState(() {
                        diceRight = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Roll Both'),
          icon: Icon(Icons.repeat),
          backgroundColor: Colors.red[600],
          onPressed: (){
            setState(() {
              diceLeft = Random().nextInt(6) + 1;
              diceRight = Random().nextInt(6) + 1;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
