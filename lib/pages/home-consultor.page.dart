import 'package:flutter/material.dart';

class HomePageConsultor extends StatefulWidget {
  @override
  _HomePageConsultorState createState() => _HomePageConsultorState();
}

class _HomePageConsultorState extends State<HomePageConsultor> {
  int indice = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> telas = <Widget>[
    Text(
      'Index 0: Cursos',
      style: optionStyle,
    ),
    Text(
      'Index 1: Consultoria',
      style: optionStyle,
    ),
    Text(
      'Index 2: Avaliação',
      style: optionStyle,
    ),
  ];

  void selecionar(int indice) {
    setState(() {
      this.indice = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultor"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [
                Color(0xFF1058a0),
                Color(0xFF4fb1ee),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              accountName: Text("Thiago Neves"),
              accountEmail: Text("thiago_neves@una.com.br"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://avatars3.githubusercontent.com/u/72223381?s=460&u=2ae4fc7c11e8e43f8bf95e079bd55dac7e5b5046&v=4'),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Meu Perfil"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a o Perfil.');
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Cursos Favoritos"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 03.');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Pagina Atual"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Pagina Atual');
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 260,
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text(
                "Sair",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      ),
      body: Center(
        child: telas.elementAt(this.indice),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Cursos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Consultoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_rounded),
            label: 'Avaliação',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.lightBlue,
        onTap: selecionar,
      ),
    );
  }
}
