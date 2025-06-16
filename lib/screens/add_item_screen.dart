import 'package:flutter/material.dart';
import '../models/item.dart';

class AddItemScreen extends StatefulWidget {
  final void Function(Item) onItemAdded;

  const AddItemScreen({super.key, required this.onItemAdded});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

  void _salvarItem() {
    final novoItem = Item(
      name: _tituloController.text,
      description: _descricaoController.text,
    );

    widget.onItemAdded(novoItem); // chama o callback
    Navigator.pop(context); // volta pra home
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Adicionar Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _tituloController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _descricaoController,
              decoration: const InputDecoration(labelText: 'Descrição'),
              maxLines: 5,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _salvarItem,
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
