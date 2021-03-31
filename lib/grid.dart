import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tela de grid"),
        centerTitle: true,
      ),
      body: GridView.count(
        // Cria um grid com duas colunas
        crossAxisCount: 4,
        // Gera 100 Widgets que exibem o seu índice
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
            ),
          );
        }),
      ),
    );
  }
}
