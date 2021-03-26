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
        crossAxisCount: 2,
        // Gera 100 Widgets que exibem o seu índice
        children: List.generate(10, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}
