import 'package:flutter/material.dart';
import 'package:loja_flutter_curso/components/product_item.dart';
import 'package:loja_flutter_curso/models/product.dart';
import 'package:loja_flutter_curso/models/product_list.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadProducts = provider.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: loadProducts.length,
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
          value: loadProducts[index],
          child: const ProductItem(),
        );
      },
    );
  }
}
