import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String title = 'List It!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Aqui depois vamos navegar para a tela de adicionar resenha
            },
          ),
        ], // Actions
      ),
      body: const Center(
        child: Text('Ainda não há resenhas.'),
      ),
    );
  } // Widget build
} // MyHomePage
