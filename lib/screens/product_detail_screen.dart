import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/all_products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const nameRoute = 'product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    // final product = Provider.of<Products>(context)
    //     .allproducts
    //     .firstWhere((prod) => prod.id == productId);
    final product = Provider.of<Products>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(title: Text('Product detail')),
      body: Center(
          child: Column(
        children: [
          Text('Number: ${product.id}'),
          Text('Title: ${product.title}'),
        ],
      )),
    );
  }
}
