import 'package:projeto_final/pages/cadastro-consultor.page.dart.dart';
import 'package:projeto_final/pages/cadastro-microempreendedor.page.dart';
import 'package:projeto_final/pages/cadastro.page.dart';
import 'package:projeto_final/pages/home-consultor.page.dart';
import 'package:projeto_final/pages/home-microempreendedor.page.dart';
import 'package:projeto_final/pages/login.page.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/pages/recuperar-senha.page.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/consultoria': (context) => HomePageConsultor(),
        '/microempreendedor': (context) => HomePageMicroempreendedor(),
        '/recuperaSenha': (context) => RecuperarSenhaPage(),
        '/cadastro': (context) => CadastroPage(),
        '/cadastroConsultor': (context) => CadastroConsultor(),
        '/cadastroMicroempreendedor': (context) => CadastroMicroempreendedor(),
      },
    );
  }
}