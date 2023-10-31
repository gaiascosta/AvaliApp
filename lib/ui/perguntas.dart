import 'package:flutter/material.dart';

class Perguntas extends StatefulWidget {
  const Perguntas({super.key});

  @override
  State<Perguntas> createState() => _PerguntasState();
}

class _PerguntasState extends State<Perguntas> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingWidth = screenWidth * 0.01;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
              top: paddingWidth * 5,
              left: paddingWidth * 5,
              right: paddingWidth * 5),
          children: [
            Column(
              children: [
                perfil(screenWidth, screenHeight),
                sugestion(screenWidth, screenHeight),
                dimensions(screenWidth, screenHeight),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget sugestion(screenWidth, screenHeight) => Column(children: [
      const Padding(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Responda agora",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Outras",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ]),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('lib/images/Frame 1.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          height: screenWidth * 0.3,
          width: screenWidth * 0.85,
        ),
      )
    ]);

Widget dimensions(screenWidth, screenHeight) => Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                "Dimensões",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/Frame 1.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.4,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/Frame 2.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.4,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/Frame 3.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.4,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/Frame 4.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.4,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/Frame 5.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.4,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/Frame 6.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.4,
                ),
              ],
            ),
          ),
        ],
      ),
    );

Widget perfil(screenWidth, screenHeight) => Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Container(
              height: screenHeight * 0.15,
              width: screenHeight * 0.15,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(screenHeight * 0.1),
                child: Image.asset(
                  "lib/images/frame2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  width: screenWidth * 0.5,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "José da Silva Alves de Pedro Alcantara",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "ILPI de Belo Horizonte",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
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
