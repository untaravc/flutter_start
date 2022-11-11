import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/all_products.dart';
import './product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final all_product = productData.allproducts;

    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: all_product.length,
        itemBuilder: ((context, index) {
          return ProductItem(
            id: all_product[index].id,
            title: all_product[index].title,
            imageUrl: all_product[index].imageUrl,
          );
        }));
  }
}
