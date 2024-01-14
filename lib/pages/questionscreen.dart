import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionScreen(),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  List<Question> questions = [
    Question(
      text: "\n1- barras de apoio nos quartos:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n2- banheiros adaptados:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n3- portas com largura mínima de 80 cm:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n4- piso antiderrapante em seu ambiente, interno e externo:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n5- rampas ou elevador, ao invés de escadas:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n6- corrimões:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n7- ambientes livres de obstruções:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n8- dormitórios dotados de luz de vigília:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n9- campainha de alarme:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n10- área para guarda de roupas e pertences dos residentes:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
    Question(
      text: "\n11- extintores com data de validade adequada, sirenes, vias de escape, escada de incêndio, porta resistente ao fogo, existência de placas de sinalização, luzes indicadoras:",
      options: [
        "Inexistente, a ILPI não apresenta nenhum dos itens definidos pelo padrão",
        "Incipiente, de 1 a 3 itens e é necessário muito esforço para alcançar o padrão de qualidade",
        "Intermediário, de 4 a 8 itens, exigindo pouco esforço para alcançar o padrão de qualidade",
        "Avançado, possui mais que 8 itens definidos pelo padrão de qualidade",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Text(
              questions[currentQuestionIndex].text,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 32),
            Column(
              children: questions[currentQuestionIndex].options.map((option) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      onOptionSelected(option);
                    },
                    child: Text(option),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  void onOptionSelected(String selectedOption) {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Perguntas respondidas'),
            content: const Text('Você respondeu todas as perguntas.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Fechar'),
              ),
            ],
          );
        },
      );
    }
  }
}

class Question {
  final String text;
  final List<String> options;

  Question({
    required this.text,
    required this.options,
  });
}
