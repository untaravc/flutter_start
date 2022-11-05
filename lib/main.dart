import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout'),
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 50,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 50,
                color: Colors.amber,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.pink,
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 200,
                    width: 50,
                    color: Colors.brown,
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
