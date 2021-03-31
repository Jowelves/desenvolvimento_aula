import 'package:flutter/material.dart';
import 'login.dart';

//Parte principal inicial da aplicação
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(), //depois de iniciado ele chama a proxima pagina
  ));
}
