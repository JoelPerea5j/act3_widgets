import 'package:flutter/material.dart';

class Pantallauno extends StatelessWidget {
  const Pantallauno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pantalla 1"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "/Pantallados");
                },
                child: const Text("Ver pantalla 2!"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "/Pantallatres");
                },
                child: const Text("Ver pantalla 3!"),
              ),
            ),
          ],
        ));
  }
}
