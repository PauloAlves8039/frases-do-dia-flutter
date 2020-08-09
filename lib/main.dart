import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

/// Está classe define os Widgets utilizados na view principal.
class _HomeState extends State<Home> {

  /// Array com as frases atribuidas para exibição.
  var _frases = [
    "A maior glória não é ficar de pé, mas levantar-se cada vez que se cai. (Confúcio)",
    "Sonhe como se você fosse viver para sempre. Viva como se você fosse morrer hoje. (James Dean)",
    "O talento vence jogos, mas só o trabalho em equipe ganha campeonatos. (Michael Jordan)",
    "Estabelecer metas é o primeiro passo para transformar o invisível em visível. (Tony Robbins)",
    "Sucesso não é quanto dinheiro você ganha, mas a diferença que você faz na vida das pessoas. (Michelle Obama)",
    "O bravo não é quem não sente medo, mas quem vence esse medo. (Nelson Mandela)",
    "Sozinhos, podemos fazer tão pouco; juntos, podemos fazer muito. (Helen Keller)",
    "É sempre divertido fazer o impossível. (Walt Disney)",
    "A sorte favorece os destemidos. (Alexandre, o Grande)",
    "A covardia é o medo aceito; a coragem é o medo dominado. (Lecouve)"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  /// Método responsável por gerar frases de forma randômica.
  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
