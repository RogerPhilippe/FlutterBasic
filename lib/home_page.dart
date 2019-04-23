import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State createState() => new HomePageState();

}

class HomePageState extends State<HomePage> {

  // Local variables
  var resultStr = "0";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculadora Simples"),
        ),
        body: new Container(
          child: Column( // Como temos vários filhos organizados verticalmente, estamos usando a coluna
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Espaço vertical igual entre todos os filhos da coluna - Evenly = Uniformemente
            children: <Widget>[ // o widget da coluna usa a propriedade children
              Container( // Exibir container
                constraints: BoxConstraints.expand( // Criando um contêiner em caixa
                  height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 80.0,
                ),
                  alignment: Alignment.bottomRight, // Alinhando o texto no canto inferior direito da nossa tela
                  color: Colors.white, // Definir a cor do container
                  child: Text(
                    resultStr,
                    style: TextStyle( // Estilo do texto
                        fontSize: 50.0,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.right,
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("C", _clear), // Usando Widget para botões personalizados
                  _button(" ", null),
                  _button("<-", null),
                  _button("/", _div)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("7", _seven),
                  _button("8", _eigth),
                  _button("9", _nine),
                  _button("*", _mult)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("4", _four),
                  _button("5", _five),
                  _button("6", _six),
                  _button("-", _sub)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("1", _one),
                  _button("2", _two),
                  _button("3", _three),
                  _button("+", _sun)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button(" ", null),
                  _button("0", _zero),
                  _button(",", _dot),
                  _button("=", _result)
                ],
              ),
            ],
          ),
        )
    );
  }

  Widget _button(String number, Function() f) { // Criando um método de tipo de retorno Widget com número e função f como um parâmetro
    return MaterialButton(
      height: 70.0,
      child: Text(
        number,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0
        ),
      ),
      textColor: Colors.grey[100],
      onPressed: f,
    );
  }

  void _dot() {

  }

  void _clear() {
    setState(() {
      resultStr = "0";
    });
  }

  void _zero() {
    setState(() {
      if (!_verifyDisplay()) {
        resultStr += "0";
      }
    });
  }

  void _div() {

  }

  void _mult() {

  }

  void _sub() {

  }

  void _sun() {

  }

  void _result() {

  }

  void _one() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "1";
      } else {
        resultStr += "1";
      }
    });
  }

  void _two() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "2";
      } else {
        resultStr += "2";
      }
    });
  }

  void _three() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "3";
      } else {
        resultStr += "3";
      }
    });
  }

  void _four() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "4";
      } else {
        resultStr += "4";
      }
    });
  }

  void _five() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "5";
      } else {
        resultStr += "5";
      }
    });
  }

  void _six() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "6";
      } else {
        resultStr += "6";
      }
    });
  }

  void _seven() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "7";
      } else {
        resultStr += "7";
      }
    });
  }

  void _eigth() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "8";
      } else {
        resultStr += "8";
      }
    });
  }

  void _nine() {
    setState(() {
      if (_verifyDisplay()) {
        resultStr = "9";
      } else {
        resultStr += "9";
      }
    });
  }

  bool _verifyDisplay() {

    return identical(resultStr, "0");

  }

}