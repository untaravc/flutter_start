import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';
import '../widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  static const nameRoute = 'product-overview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('myShop')),
      body: ProductGrid(),
    );
  }
}
