import 'package:avaliapp/components/square_tile.dart';
import 'package:flutter/material.dart';

class QuestionsPage extends StatelessWidget {
  QuestionsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 50),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SquareTile(imagePath: 'lib/images/Frame$index.png', height: 60, onTap: (){}),
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