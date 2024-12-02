import 'package:flutter/material.dart';
import 'package:loja_flutter_curso/components/product_grid.dart';
import 'package:loja_flutter_curso/models/product_list.dart';
import 'package:provider/provider.dart';

enum FilterOption {
  favorite,
  all,
}

class ProductsOverviewPages extends StatelessWidget {
  const ProductsOverviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: FilterOption.favorite,
                child: Text('Somente Favoritos'),
              ),
              const PopupMenuItem(
                value: FilterOption.all,
                child: Text('Todos'),
              ),
            ],
            onSelected: (FilterOption selectedValue) {
              if (selectedValue == FilterOption.favorite) {
                provider.showFavoriteOnly();
              } else {
                provider.showAll();
              }
            },
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
