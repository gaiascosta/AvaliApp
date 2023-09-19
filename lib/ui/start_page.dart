import 'package:flutter/material.dart';

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
              child:
                  const Text("Bem vindo ao AvaliApp, em prol de uma vida digna",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      )),
            ),
            Padding(
                padding: EdgeInsets.all(paddingHeight * 3),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(50),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ))
          ],
        ));
  }
}
