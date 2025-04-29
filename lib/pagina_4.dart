import 'package:flutter/material.dart';

//! AnimatedPadding

class Pantallacuatro extends StatefulWidget {
  const Pantallacuatro({Key? key}) : super(key: key);

  @override
  State<Pantallacuatro> createState() => _PantallacuatroState();
}

class _PantallacuatroState extends State<Pantallacuatro> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange, // Le da saborcito al AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('Change padding'),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
            ),
            Text('Padding = $padValue'),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
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
