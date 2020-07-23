import 'package:debitcard/widgets/backcard.dart';
import 'package:debitcard/widgets/frontcard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Debit Card',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const double pi = 3.14;
  double _rotationFactor = 0;
  double frontOpacity = 1;
  double backOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(pi * _rotationFactor),
              origin: Offset(MediaQuery.of(context).size.width / 2, 0),
              child: AnimatedSwitcher(
                  duration: Duration(seconds: 3),
                  child: _rotationFactor < 0.5 ? FrontCard() : BackCard())),
          SizedBox(
            height: 20,
          ),
          Slider(
            onChanged: (double value) {
              setState(() {
                _rotationFactor = value;
              });
            },
            value: _rotationFactor,
            activeColor: Colors.white,
            inactiveColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
