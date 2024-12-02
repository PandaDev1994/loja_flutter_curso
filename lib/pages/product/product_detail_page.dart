import 'package:flutter/material.dart';
import 'package:loja_flutter_curso/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)?.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.network(
                product.imageUrl,
              ),
            ),
          ),
          Text(
            product.description,
          ),
        ],
      ),
    );
  }
}
