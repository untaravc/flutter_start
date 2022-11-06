import 'package:flutter/material.dart';

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
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          width: 300,
          height: 500,
          color: Colors.amber,
          // child: Image(image: AssetImage('assets/images/test.png')),
          // child: Image(
          //   fit: BoxFit.contain,
          //   image: NetworkImage('https://picsum.photos/250?image=9'),
          // ),
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
      ),
    );
  }
}
