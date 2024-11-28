import 'package:flutter/material.dart';
import 'package:loja_flutter_curso/pages/home.dart';
import 'package:loja_flutter_curso/pages/products_overview_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductsOverviewPages(),
    );
  }
}
