import "package:flutter/material.dart";
import 'package:PereaRutas/pagina_uno.dart';
import 'package:PereaRutas/pagina_dos.dart';
import 'package:PereaRutas/pagina_3.dart';
import 'package:PereaRutas/pagina_4.dart';
import 'package:PereaRutas/pagina_5.dart';
import 'package:PereaRutas/pagina_6.dart';
import 'package:PereaRutas/pagina_7.dart';

void main() => runApp(MirutasApp());

class MirutasApp extends StatelessWidget {
  const MirutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "entre paginas routes",
      initialRoute: "/",
      routes: {
        "/": (context) => const Pantallauno(),
        "/pantalla2": (context) => const Pantallados(),
        "/pantalla3": (context) => const Pantallatres(),
        "/pantalla4": (context) => const Pantallacuatro(),
        "/pantalla5": (context) => const Pantallacinco(),
        "/pantalla6": (context) => const Pantallaseis(),
        "/pantalla7": (context) => const Pantallasiete(),
      },
    );
  }
}
