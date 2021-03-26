import 'package:desenvolvimento_aula/home.dart';
import 'package:desenvolvimento_aula/recuperar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String resultado = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void reset() {
    setState(() {
      emailController.text = '';
      senhaController.text = '';
      resultado = '';
      formkey = GlobalKey<FormState>();
    });
  }

  final email1 = 'teste@email.com';
  final senha1 = '12345';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Login Banco',
                    style: TextStyle(color: Colors.red),
                  ),
                  Image.asset(
                    "images/SantanderLogo.png",
                    fit: BoxFit.cover,
                    scale: 3.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh, color: Colors.red),
                    onPressed: () {
                      reset();
                    },
                  )
                ],
              ),
            )),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: SingleChildScrollView(
              child: Form(
            key: formkey,
            child: Container(
              margin: EdgeInsets.only(left: 60.0, right: 60.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(40.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.red[600],
                    child: Icon(
                      Icons.person_outline,
                      size: 120,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Column(
                      children: [
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "teste@email.com",
                                labelText: 'Email',
                                labelStyle:
                                    TextStyle(color: Colors.red, fontSize: 20)),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 25),
                            controller: emailController,
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Insira seu email!!';
                              }
                              if (value != email1) {
                                return 'Email incorreto';
                              }
                            }),
                        TextFormField(
                            decoration: InputDecoration(
                                hintText: '12345',
                                labelText: 'Senha',
                                labelStyle:
                                    TextStyle(color: Colors.red, fontSize: 20)),
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.red, fontSize: 25),
                            controller: senhaController,
                            obscureText: true,
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Insira sua senha';
                              }
                              if (value != senha1) {
                                return 'Senha incorreta';
                              }
                            }),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            height: 50,
                            child: ElevatedButton(
                                child: Text(
                                  'Entrar',
                                  style: TextStyle(fontSize: 25),
                                ),
                                onPressed: () {
                                  if (formkey.currentState.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Container(
                            height: 30,
                            child: ElevatedButton(
                                child: Text(
                                  'Esqueci minha senha',
                                  style: TextStyle(fontSize: 25),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Recuperar()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red)),
                          ),
                        ),
                        Text(
                          resultado,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
