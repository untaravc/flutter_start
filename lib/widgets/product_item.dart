import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailScreen.nameRoute,
            arguments: id);
      },
      child: Container(
        color: Colors.amber,
        child: Column(
          children: [Text(title)],
        ),
      ),
    );
  }
}
