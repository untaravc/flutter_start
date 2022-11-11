import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:flutter_application_1/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  static const nameRoute = 'product-overview';

  final List<Product> loadedProducts = List.generate(10, (index) {
    return Product(
        id: index.toString(),
        title: 'Barang A',
        description: 'Deskripsi',
        imageUrl: 'Image url',
        price: 20000.00);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('myShop')),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: loadedProducts.length,
          itemBuilder: ((context, index) {
            return ProductItem(
              id: loadedProducts[index].id,
              title: loadedProducts[index].title,
              imageUrl: loadedProducts[index].imageUrl,
            );
          })),
    );
  }
}
