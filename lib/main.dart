import 'package:desenvolvimento_aula/home.dart';
import 'package:flutter/material.dart';

//Parte principal inicial da aplicação
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(), //depois de iniciado ele chama a proxima pagina
  ));
}
