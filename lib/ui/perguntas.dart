import 'package:flutter/material.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  static const smallestAndroidSize = Size(360.0, 640.0);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingWidth = screenWidth * 0.01;

    Size getScreenSize = MediaQuery.of(context).size;
    bool isSmallestScreen = getScreenSize <= smallestAndroidSize;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
            top: paddingWidth * 5,
            left: paddingWidth * 5,
            right: paddingWidth * 5),
        children: [
          Column(
            children: [
              perfil(screenWidth, screenHeight, isSmallestScreen),
            ],
          )
        ],
      ),
    );
  }
}

Widget perfil(screenWidth, screenHeight, isSmallestScreen) => Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Padding(padding: const EdgeInsets.only(top: 10,bottom: 10, left: 10), child: Container(
           height: screenHeight * 0.15,
           width: screenHeight * 0.15,
           decoration: const BoxDecoration(
             shape: BoxShape.circle,
             color: Colors.green,
           ),
           child: ClipRRect(
             borderRadius: BorderRadius.circular(screenHeight * 0.1),
             child: Image.asset(
               "images/frame2.png",
               fit: BoxFit.cover,
             ),
           ),
         ),),
          Flexible(
            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  width: screenWidth * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "José da Silva Alves de Pedro Alcantara",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: isSmallestScreen? 14 : 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "ILPI de Belo Horizonte",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: isSmallestScreen? 12 : 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );