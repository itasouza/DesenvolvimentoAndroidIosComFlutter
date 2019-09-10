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

class _HomeState extends State<Home> {

  var _frases = [
    "O importante não é vencer todos os dias, mas lutar sempre.",
    "Maior que a tristeza de não haver vencido é a vergonha de não ter lutado!",
    "É melhor conquistar a si mesmo do que vencer mil batalhas.",
    "Quem ousou conquistar e saiu pra lutar, chega mais longe!",
    "Enquanto houver vontade de lutar haverá esperança de vencer.",
    "Difícil é ganhar um amigo em uma hora; fácil é ofendê-lo em um minuto.",
    "O medo de perder tira a vontade de ganhar.",
    "Aquele que não tem confiança nos outros, não lhes pode ganhar a confiança.",
    "Escolher o seu tempo é ganhar tempo.",
    "Arriscamo-nos a perder quando queremos ganhar demais.",
    "Perder para a razão, sempre é ganhar.",
    "Muitos sabem ganhar dinheiro, mas poucos sabem gastá-lo.",
    "Se você pretende ser rico, pense em economizar tanto quanto em ganhar."
  ];

  var _frasegerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _frasegerada= _frases[numeroSorteado];
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
          //width: double.infinity,
          /* decoration: BoxDecoration(
          border: Border.all(width: 3,color: Colors.amber)
        ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _frasegerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
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
