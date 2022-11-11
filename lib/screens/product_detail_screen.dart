import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const nameRoute = 'product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('Product detail')),
      body: Center(child: Text('Number: ${productId}')),
    );
  }
}
