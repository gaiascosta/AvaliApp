// ignore_for_file: use_build_context_synchronously
import 'package:avaliapp/components/my_button.dart';
import 'package:avaliapp/components/my_text_field.dart';
import 'package:avaliapp/components/square_tile.dart';
import 'package:avaliapp/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onTap});
  final Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void errorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              message,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          );
        });
  }

  void signUserUp() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      //Erro de confirmação da senha
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Navigator.pop(context);
      } else {
        Navigator.pop(context);
        errorMessage("As senhas não coincidem");
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'invalid-email') {
        errorMessage("E-mail inválido");
      } else if(e.code == 'email-already-in-use'){
        errorMessage("E-mail já cadastrado");
      } else if(e.code == 'weak-password'){
        errorMessage("Senha muito fraca");
      } else{
        errorMessage("Um erro inesperado ocorreu");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                //
                Image.asset("lib/images/logo.png", height: 150),
                //
                const SizedBox(height: 30),
                //
                MyTextField(
                    controller: emailController,
                    hintText: 'E-mail',
                    obscureText: false),
                //
                const SizedBox(height: 10),
                //
                MyTextField(
                    controller: passwordController,
                    hintText: 'Senha',
                    obscureText: true),
                //
                const SizedBox(height: 10),
                MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirme a senha',
                    obscureText: true),
                //
                const SizedBox(height: 20),
                //
                MyButton(onTap: signUserUp, text: 'Cadastrar'),
                //
                const SizedBox(height: 30),
                //
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 0.5,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Ou continue com'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                //
                const SizedBox(height: 40),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                        imagePath: 'lib/images/googleLogo.png', height: 70),
                  ],
                ),
                //
                const SizedBox(height: 40),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Já possui uma conta?"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        "Faça o login",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
