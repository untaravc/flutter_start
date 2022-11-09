import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main App'),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  List<Product> dummyData = List.generate(100, (index) {
    return Product(
        title: 'Judul Produk', price: 2000, imageUrl: 'link_for_image_url');
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: dummyData.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            child: Column(children: [
              Text("title:" + dummyData[index].title),
              Text("title:" + dummyData[index].price.toString()),
              Text("title:" + dummyData[index].imageUrl),
            ]),
          );
        });
  }
}
