import 'package:avaliapp/components/my_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void message(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            message,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        );
      },
    );
  }

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text.trim(),
      );

      message('Um e-mail foi enviado para redefinir sua senha.');
    } on FirebaseAuthException {
      message('Erro ao enviar e-mail de redefinição de senha');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
        title: const Text(
          "Redefinir senha",
        ),
        elevation: 1.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Icon(
                Icons.mail_rounded,
                size: 120,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Insira seu e-mail abaixo e lhe enviaremos uma mensagem de redefinição de senha',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'E-mail',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: resetPassword,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green), // Mude para a cor desejada
                ),
                child: const Text(
                  'Redefinir Senha',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
