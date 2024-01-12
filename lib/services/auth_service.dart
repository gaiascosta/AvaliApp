import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class AuthService {
  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    if (gUser == null) {
      return null;
    }

    final GoogleSignInAuthentication gAuth = await gUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    final User? user = userCredential.user;

    // Verificar se o usuário já existe no Firestore
    final userExists = await userExistsInFirestore(user!.uid);

    // Se não existir, criar um novo usuário no Firestore
    if (!userExists) {
      await createUserInFirestore(user);
    }

    return user;
  }

  Future<bool> userExistsInFirestore(String uid) async {
    final DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();

    return userDoc.exists;
  }

  Future<void> createUserInFirestore(User user) async {
    final String file =
        await rootBundle.loadString('lib/components/answer_model.json');
    final answerModel = await json.decode(file);
    await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
      'E-mail': user.email,
      'Respostas': answerModel,
      'Foto': "https://firebasestorage.googleapis.com/v0/b/avaliapp-e041d.appspot.com/o/Fotos%2FdefaultProfilePicture.jpg?alt=media&token=29beb6cb-c6ca-4378-abf8-b94736d425c7",
      'Instituição': "Insira o nome da sua instituição",
      'Nome': "Insira o seu nome",
    });
  }
}
