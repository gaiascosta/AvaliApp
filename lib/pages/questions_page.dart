import 'package:avaliapp/components/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 50),
                /////Esse ícone é apenas uma função teste de escrita das respostas dos usuários no DB/////
                IconButton(
                  onPressed: (List<String> answers) {
                    User? user = FirebaseAuth.instance.currentUser;
                    if (user != null) {
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(user.email)
                          .set({
                        'answers': answers,
                      });
                    }
                  }(["1", "2"]),
                  icon: const Icon(Icons.plus_one),
                ),
                //////////////////////////////////////////////////////////////////////////////////////////
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SquareTile(
                      imagePath: 'lib/images/Frame$index.png',
                      height: 60,
                      onTap: () {}),
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
