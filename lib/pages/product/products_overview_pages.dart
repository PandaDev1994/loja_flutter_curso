import 'package:flutter/material.dart';
import 'package:loja_flutter_curso/components/product_grid.dart';

class ProductsOverviewPages extends StatelessWidget {
  const ProductsOverviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 0,
                child: Text('Somente Favoritos'),
              ),
              const PopupMenuItem(
                value: 1,
                child: Text('Todos'),
              ),
            ],
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          'Loja',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const ProductGrid(),
    );
  }
}
