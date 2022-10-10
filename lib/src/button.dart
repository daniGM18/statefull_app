import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = [
    'Flutter',
    'es',
    'Genial',
    'Creado',
    'por',
    'Daniel',
    'Gutierrez',
    'Melendez'
  ];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 5 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera Aplicación Stateful Widget 190720"),
        backgroundColor: Color.fromARGB(255, 39, 176, 69),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 25, color: Colors.blueGrey),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style:
                      ElevatedButton.styleFrom(primary: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
