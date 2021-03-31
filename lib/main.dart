import 'package:flutter/material.dart';

import 'tela_lista.dart';

//Parte principal inicial da aplicação
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaLista(), //depois de iniciado ele chama a proxima pagina
  ));
}
