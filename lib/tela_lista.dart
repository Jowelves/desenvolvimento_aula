import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TelaLista extends StatefulWidget {
  @override
  _TelaListaState createState() => _TelaListaState();
}

class _TelaListaState extends State<TelaLista> {
  void _recuperarPreco() async {
    var url = Uri.parse(
        'https://blockchain.info/ticker'); //convert a string para o tipo Uri
    http.Response response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    print("Resultado" + retorno["BRL"]);
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
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: () => _recuperarPreco(),
                child: Icon(
                  Icons.update,
                  size: 25.0,
                ),
              ),
              Text("Atualizar")
            ],
          )
        ],
      ),
      body: Container(
        color: Colors.amber,
        child: SingleChildScrollView(
            /*  child: ListView.builder(
            itemCount: ,
           itemBuilder: ,
           
          ), */
            ),
      ),
    );
  }
}
