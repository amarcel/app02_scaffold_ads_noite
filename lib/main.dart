import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de nomes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NomePessoa('Tayná', Colors.red, 40),
            NomePessoa('Carol', Colors.green, 50),
            NomePessoa('Fernanda', Colors.yellow, 60),
            NomePessoa('Alan', Colors.purple.shade200, 70),
            NomePessoa('João', Colors.orange, 80),
            NomePessoa('Paulo', Colors.pink.shade100, 90),
          ],
        ),
      ),
    );
  }
} // fim da classe

class NomePessoa extends StatelessWidget {
  final String nome;
  final Color cor;
  final double tamanhoTexto;
  NomePessoa(this.nome, this.cor, this.tamanhoTexto);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DecoratedBox(
        decoration: BoxDecoration(color: cor),
        child: Text(
          nome,
          style: TextStyle(fontSize: tamanhoTexto),
        ),
      ),
    );
  }
}
