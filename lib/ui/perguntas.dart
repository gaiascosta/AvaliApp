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

    double paddingWidth = screenWidth * 0.01;

    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: paddingWidth * 5,
            left: paddingWidth * 5,
            right: paddingWidth * 5),
            color: Colors.red,
          child: Column(
            children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
              Container(
                alignment: Alignment.center,
                height: 200,
                child: Image.asset("images/Perfil.png"),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("images/grandma.png")),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 5),
                            child: Text(
                              "José da Silva Alves",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "ILPI de Belo Horizonte",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
