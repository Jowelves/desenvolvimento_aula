import 'package:desenvolvimento_aula/grid.dart';
import 'package:desenvolvimento_aula/lista.dart';
import 'package:desenvolvimento_aula/login.dart';
import 'package:flutter/material.dart';

///draw no appbar circol avatar icone ou image

//centro dois botoes que encaminha para a lista e para o grid
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(top: 2.0),
            children: [
              //container 1
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: 80.0,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 80.0,
                      ),
                    ),
                    Text(
                      ("Usuário Logado!"),
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
              ),

              ///container2
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.vertical(
                        top: Radius.zero, bottom: Radius.circular(100.0))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        label: Text("Home",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ))),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Lista()),
                          );
                        },
                        icon: Icon(
                          Icons.library_books,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        label: Text("Lista",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ))),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Grid()),
                          );
                        },
                        icon: Icon(
                          Icons.calculate,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        label: Text("Grid",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ))),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 250.0,
                    ),

                    ///botao sair
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        icon: Icon(Icons.exit_to_app,
                            size: 40.0, color: Colors.red),
                        label: Text(
                          "Sair",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //////////////////////////////////
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Tela home com drawer",
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lista()),
                  );
                },
                child: Container(
                    margin: EdgeInsets.all(40.0),
                    color: Colors.black,
                    height: 300,
                    width: 500,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset("images/cartaoBlack.jpg"),
                            Text(
                              "Ir para a tela com lista",
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Grid()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(40.0),
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Column(
                    children: [
                      Text("Ir para a tela com Grid"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
