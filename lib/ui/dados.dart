// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 455,
                  height: 141,
                  child: Image.asset("lib/images/logo.png"),
                ),
                SizedBox(
                  height: 30,
                ),
                formulario(),
                Container(
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      child: Text(
                        "Esqueci minha senha!",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      onPressed: () {
                        //Faz oq deve fazer
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 200,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.green.shade700,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: TextButton(
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.black38,
                        indent: 40,
                        endIndent: 5,
                      ),
                    ),
                    Text(
                      "Ou conecte-se com",
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black38,
                        indent: 5,
                        endIndent: 40,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: IconButton(
                      icon: Image.asset('lib/images/googleLogo.png'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Ainda não possui uma conta?",
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text(
                            "Cadastre-se já!",
                          ),
                          onPressed: () {},
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget formulario() => Column(
  children: [
    TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                  style: TextStyle(fontSize: 18),
                )
  ],
);
