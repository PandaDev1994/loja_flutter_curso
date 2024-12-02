import 'package:flutter/material.dart';
import 'package:loja_flutter_curso/models/cart.dart';
import 'package:loja_flutter_curso/models/product_list.dart';
import 'package:loja_flutter_curso/pages/product/product_detail_page.dart';
import 'package:loja_flutter_curso/pages/product/products_overview_pages.dart';
import 'package:loja_flutter_curso/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
          title: 'Loja Flutter',
          theme: ThemeData(
            fontFamily: 'Lato',
            primarySwatch: Colors.purple,
          ),
          debugShowCheckedModeBanner: false,
          home: const ProductsOverviewPages(),
          routes: {
            AppRoutes.productDeatils: (ctx) => const ProductDetailPage(),
          }),
    );
  }
}
