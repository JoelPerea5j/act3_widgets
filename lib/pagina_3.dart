import 'package:flutter/material.dart';

class Pantallatres extends StatefulWidget {
  const Pantallatres({Key? key}) : super(key: key);

  @override
  State<Pantallatres> createState() => _PantallatresState();
}

class _PantallatresState extends State<Pantallatres> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3'), // Puedes cambiar el título
        centerTitle: true,
        backgroundColor: Colors.deepPurple, // Personaliza el color si quieres
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Text('Flutter'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
              child: const Text("Switch"),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("regresar!"),
            ),
          ],
        ),
      ),
    );
  }
}
