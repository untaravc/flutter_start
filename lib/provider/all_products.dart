import 'package:flutter/material.dart';
import '../models/products.dart';

class Products with ChangeNotifier {
  List<Product> _allproducts = List.generate(10, (index) {
    return Product(
        id: index.toString(),
        title: 'Barang A',
        description: 'Deskripsi',
        imageUrl: 'Image url',
        price: 20000.00);
  });

  List<Product> get allproducts {
    return [..._allproducts];
  }
}
