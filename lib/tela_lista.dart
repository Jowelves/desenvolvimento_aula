import 'package:flutter/material.dart';

class TelaLista extends StatefulWidget {
  @override
  _TelaListaState createState() => _TelaListaState();
}

class _TelaListaState extends State<TelaLista> {
  final _textoControle = TextEditingController();
  int itens = 0;

  void _addLista() {
    setState(() {
      itens = int.parse(_textoControle.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tela com lista",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black26,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 7.0, 5.0),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: _textoControle,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                ElevatedButton.icon(
                    onPressed: _addLista,
                    icon: Icon(Icons.add),
                    label: Text("Quantidade de Itens da lista")),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0),
              itemCount: itens,
              itemBuilder: (contex, index) {
                return ListTile(
                  title: Text("Item nº: $index"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
