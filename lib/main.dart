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
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Hello World 123456',
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.amber,
                  // fontFamily: 'Poppins',
                  // fontFamily: 'Nunito',
                  fontFamily: 'Roboto',
                  decoration: TextDecoration.underline,
                  letterSpacing: 2.0),
            ),
          ),
        ),
      ),
    );
  }
}
