import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double qnt = 0;
  String infoQnt = '0';

  void _soma() {
    setState(() {
      qnt += 1;
      infoQnt = '$qnt';
    });
  }

  void _subtrai() {
    setState(() {
      qnt -= 1;

      if (qnt < 0) {
        qnt = 0;
      }
      infoQnt = '$qnt';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Contador de Pessoas", style: TextStyle(color: Colors.white, fontSize: 25.0)),
      centerTitle: true,
      backgroundColor: Colors.cyan.shade600,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _texto(infoQnt),
          _grupo(),
        ],
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.lightBlue.shade900, fontSize: 100.0),
    );
  }

  _grupo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _botaoSoma(),
          _botaoSubtrai(),
        ],
      ),
    );
  }

  _botaoSoma() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _soma,
          child: Text("+", style: TextStyle(color: Colors.white, fontSize: 30.0)),
          color: Colors.cyan.shade600,
        ),
      ),
    );
  }

  _botaoSubtrai() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _subtrai,
          child: Text("-", style: TextStyle(color: Colors.white, fontSize: 30.0)),
          color: Colors.cyan.shade600,
        ),
      ),
    );
  }
}
