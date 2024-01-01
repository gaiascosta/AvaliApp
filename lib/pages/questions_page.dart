import 'package:avaliapp/components/dimension_button.dart';
import 'package:flutter/material.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 19, 19, 36),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 10),
                          child: Container(
                            height: 120,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              clipBehavior: Clip.hardEdge,
                              child: Image.asset(
                                "lib/images/defaultProfilePicture.jpg",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: SizedBox(
                              width: 200,
                              child: Column(
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
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) => DimensionButton(
                      imagePath: 'lib/images/Frame$index.png', onTap: () {}),
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
