import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/page_dua.dart';
import 'package:flutter_application_1/page_satu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        PageSatu.nameRoute: (context) => PageSatu(),
        '/page-two': (context) => PageDua(),
      },
    );
  }
}
