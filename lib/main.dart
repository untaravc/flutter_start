import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/product_detail_screen.dart';
import 'package:flutter_application_1/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';
import './provider/all_products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => Products()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'myShop',
        theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: 'Roboto'),
        initialRoute: ProductOverviewScreen.nameRoute,
        routes: {
          ProductOverviewScreen.nameRoute: (context) => ProductOverviewScreen(),
          ProductDetailScreen.nameRoute: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}
