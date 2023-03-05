import 'package:calculadora/answer.dart';
import 'package:calculadora/boton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String campo = '';
  String respuesta = '';
  void precionar() {
    campo;
    setState(() {});
  }

  void resolver() {
    String entradaFinal = campo;
    entradaFinal = campo.replaceAll('x', '*');

    Parser p = Parser();
    Expression exprecion = p.parse(entradaFinal);
    ContextModel cm = ContextModel();
    double evaluacion = exprecion.evaluate(EvaluationType.REAL, cm);
    respuesta = evaluacion.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Answer(texto: campo, color: Colors.white),
                Answer(texto: respuesta, color: Colors.white),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Boton(
                      text: '7',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '8',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '9',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '+',
                      color: Colors.orange,
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Boton(
                      text: '4',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '5',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '6',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '-',
                      color: Colors.orange,
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Boton(
                      text: '1',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '2',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: '3',
                      color: Color.fromARGB(255, 97, 93, 93),
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                    Boton(
                      text: 'x',
                      color: Colors.orange,
                      cb: (p0) {
                        campo += p0;
                        precionar();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Boton(
                        text: '0',
                        color: Color.fromARGB(255, 97, 93, 93),
                        cb: (p0) {
                          campo += p0;
                          precionar();
                        }),
                    Boton(
                        text: 'C',
                        color: Color.fromARGB(255, 97, 93, 93),
                        cb: (p0) {
                          campo = '';
                          respuesta = '';
                          precionar();
                        }),
                    Boton(
                        text: '=',
                        color: Colors.orange,
                        cb: (p0) {
                          resolver();
                        }),
                    Boton(
                        text: '/',
                        color: Colors.orange,
                        cb: (p0) {
                          campo += p0;
                          precionar();
                        }),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
