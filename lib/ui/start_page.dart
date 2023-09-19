import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    double paddingWidth = screenWidth * 0.01;
    double paddingHeight = screenHeight * 0.01;

    var spinkit = SpinKitWave(
      color: Colors.green,
      size: screenHeight * 0.06,
    );
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: screenHeight * 0.6,
              child: Image.asset(
                "images/intro.png",
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(paddingHeight * 3),
              child: Text("Bem vindo ao AvaliApp, em prol de uma vida digna",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHeight * 0.03,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  paddingHeight * 3, 0, paddingHeight * 3, 0),
              child: spinkit,
            ),
          ],
        ));
  }
}