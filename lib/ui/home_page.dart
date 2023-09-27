import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double paddingWidth = screenWidth * 0.01;
    double paddingHeight = screenHeight * 0.01;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Colocar botões de mudar de página"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(paddingHeight),
            child: SizedBox(
              height: screenWidth * 0.26,
              child: Image.asset(
                "images/frame2.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenHeight * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(screenHeight * 0.01),child: SizedBox(
                  height: screenWidth * 0.25,
                  child: Image.asset(
                    "images/frame1.png",
                    fit: BoxFit.contain,
                  ),
                ),),
                Padding(padding: EdgeInsets.all(screenHeight * 0.01),child: SizedBox(
                  height: screenWidth * 0.25,
                  child: Image.asset(
                    "images/frame1.png",
                    fit: BoxFit.contain,
                  ),
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
