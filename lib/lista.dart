import 'package:flutter/material.dart';

//appbar
//lista
class Lista extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela com as listas'),
      ),
      body: Container(
        color: Colors.green[100],
      ),
    );
  }
}
