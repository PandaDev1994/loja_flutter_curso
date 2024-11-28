import 'package:flutter/material.dart';
import 'package:loja_flutter_curso/components/product_item.dart';
import 'package:loja_flutter_curso/data/dummy_data.dart';
import 'package:loja_flutter_curso/models/product.dart';

class ProductsOverviewPages extends StatelessWidget {
  const ProductsOverviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> loadProducts = dummyProducts;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: loadProducts.length,
        itemBuilder: (context, index) {
          return ProductItem(
            product: loadProducts[index],
          );
        },
      ),
    );
  }
}
