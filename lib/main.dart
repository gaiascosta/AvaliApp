import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double paddingWidth = screenWidth * 0.01;
    double paddingHeight = screenHeight * 0.01;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
            padding: EdgeInsets.all(paddingWidth * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(paddingWidth * 3, 0, paddingWidth * 3, paddingHeight * 3),
                  child: Image.asset(
                    "images/grandma.png",
                    width: 330,
                    height: 320,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(paddingWidth * 16, 0, paddingWidth * 16, 0),
                    child: Container(
                        padding: EdgeInsets.all(paddingWidth * 1),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text("Acolher",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            )))),
                Padding(
                  padding: EdgeInsets.fromLTRB(paddingWidth * 2, paddingHeight * 3, paddingWidth * 2, 0),
                  child:
                      Text("Bem vindo ao AvaliApp, em prol de uma vida digna",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          )),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(paddingWidth * 3, paddingHeight * 3, paddingWidth * 3, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(50),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 24,
                        color: Colors.black,

                      ),
                      onPressed: () {},
                    ))
              ],
            )));
  }
}
