import "package:flutter/material.dart";

class Pantallados extends StatelessWidget {
  const Pantallados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla 2"),
        centerTitle: true,
        backgroundColor: Color(0xff4ae757),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120.0,
            width: double.infinity,
            color: Colors.blueGrey,
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("regresar!"),
            ),
          ),
        ],
      ),
    );
  }
}
