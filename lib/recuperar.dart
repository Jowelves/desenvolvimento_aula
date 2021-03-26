import 'package:desenvolvimento_aula/login.dart';
import 'package:flutter/material.dart';

//tela para recuperação de senha
class Recuperar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //como se fosse o cabeçalho da tela
      appBar: AppBar(
        title: Text('Recuperação'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      //aqui fica todos os codigos que montão o corpo da tela com os widgtes moldando os layouts...
      body: Container(
        padding: EdgeInsets.all(200.0),
        child: Column(
          children: [
            //o textfild vai receber a entrada pelo ususário
            TextField(
              keyboardType: TextInputType.emailAddress,

              ///definindo o tipo de teclado
              decoration: InputDecoration(
                  //faz a decoração do textfield.
                  labelText: 'Insira seu email de recuperação',
                  labelStyle: TextStyle(color: Colors.red, fontSize: 23)),
              style: TextStyle(
                  color: Colors.red), //modifica as propriedades do texto.
            ),
            SizedBox(
              /// um widget para criar um espaço
              height: 10.0,
            ),
            Divider(), //faz o visual de uma linha
            GestureDetector(
              //captura o toque em cima do que é filho child.
              child: Icon(
                IconData(58794, fontFamily: 'MaterialIcons'),
                size: 40,
              ),
              onTap: () => Navigator.push(
                //para fazer a chamada de uma tela e passa o nome
                context,
                MaterialPageRoute(builder: (context) => Login()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
