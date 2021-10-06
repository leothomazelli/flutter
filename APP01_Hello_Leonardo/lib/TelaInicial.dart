import "package:flutter/material.dart";

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Leonardo"),
        centerTitle: true,
      ),

      body: Container(
        color: Colors.black87,
        child: Center(
          child: Text("Seja bem-vindo Leonardo",
            style: TextStyle(
                fontSize: 30,
                color: Colors.white54,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
            ),
          ),
        ),
      ),
      drawer: Container(
        color: Colors.black87,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
