import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String campo = '';
  String respuesta = '0';
  static const fontSize = TextStyle(
    fontSize: 30,
  );

  void precionar() {
    campo;
    setState(() {});
  }

  void resolver() {
    String finaluserinput = campo;
    finaluserinput = campo.replaceAll('X', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    respuesta = eval.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora', textAlign: TextAlign.start),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Text(campo, style: fontSize),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Text(respuesta, style: fontSize),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '7';
                  precionar();
                },
                child: const Text(
                  '7',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '8';
                  precionar();
                },
                child: const Text(
                  '8',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '9';
                  precionar();
                },
                child: const Text(
                  '9',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 233, 161, 7),
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '+';
                  precionar();
                },
                child: const Text(
                  '+',
                  style: fontSize,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '4';
                  precionar();
                },
                child: const Text('4', style: fontSize),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '5';
                  precionar();
                },
                child: const Text(
                  '5',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '6';
                  precionar();
                },
                child: const Text(
                  '6',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 233, 161, 7),
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '-';
                  precionar();
                },
                child: const Text(
                  '-',
                  style: fontSize,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '1';
                  precionar();
                },
                child: const Text(
                  '1',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '2';
                  precionar();
                },
                child: const Text(
                  '2',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '3';
                  precionar();
                },
                child: const Text(
                  '3',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 233, 161, 7),
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += 'X';
                  precionar();
                },
                child: const Text(
                  'X',
                  style: fontSize,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '0';
                  precionar();
                },
                child: const Text(
                  '0',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 233, 161, 7),
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo = '';
                  respuesta = '0';
                  precionar();
                },
                child: const Text(
                  'C',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 233, 161, 7),
                    padding: const EdgeInsets.all(30)),
                onPressed: () => resolver(),
                child: const Text(
                  '=',
                  style: fontSize,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 233, 161, 7),
                    padding: const EdgeInsets.all(30)),
                onPressed: () {
                  campo += '/';
                  precionar();
                },
                child: const Text(
                  '/',
                  style: fontSize,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
