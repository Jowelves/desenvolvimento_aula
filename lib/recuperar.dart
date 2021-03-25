import 'package:desenvolvimento_aula/login.dart';
import 'package:flutter/material.dart';

class Recuperar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperação'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(200.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Insira seu email de recuperação',
                  labelStyle: TextStyle(color: Colors.red, fontSize: 23)),
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            GestureDetector(
              child: Icon(
                IconData(58794, fontFamily: 'MaterialIcons'),
                size: 40,
              ),
              onTap: () => Navigator.push(
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
