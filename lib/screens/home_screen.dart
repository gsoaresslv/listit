import 'package:flutter/material.dart';
import '../models/item.dart';
import 'add_item_screen.dart';
import '../widgets/item_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String title = 'List It!';
  List<Item> items = [];

  void _addItem(Item novoItem) {
    setState(() {
      items.add(novoItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddItemScreen(onItemAdded: _addItem),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: items
            .map((item) => ItemCard(
                  titulo: item.name,
                  descricao: item.description,
                ))
            .toList(),
      ),
    );
  }
}
