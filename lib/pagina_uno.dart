import "package:flutter/material.dart";

class Pantallauno extends StatelessWidget {
  const Pantallauno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pantalla 1", textAlign: TextAlign.center),
        centerTitle: true, // Centra el título
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla2");
              },
              child: const Text("ver pantalla 2"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla3");
              },
              child: const Text("ver pantalla 3"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla4");
              },
              child: const Text("ver pantalla 4"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla5");
              },
              child: const Text("ver pantalla 5"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla6");
              },
              child: const Text("ver pantalla 6"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla7");
              },
              child: const Text("ver pantalla 7"),
            ),
          ),
        ],
      ),
    );
  }
}
