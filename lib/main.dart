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
  Home({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "name": "untara",
      'age': 26,
      'favColor': ['green', 'blue', 'cyan'],
    },
    {
      "name": "untara",
      'age': 26,
      'favColor': [
        'green',
        'blue',
        'cyan',
        'green',
        'blue',
        'cyan',
        'green',
        'blue',
        'cyan',
        'green',
        'blue',
        'cyan',
      ],
    },
    {
      "name": "untara",
      'age': 26,
      'favColor': ['green', 'blue', 'cyan'],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (context, index) {
        List favColor = myList[index]['favColor'];
        return ListTile(
          title: Text(myList[index]['name']),
          subtitle: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: favColor.map((color) {
              return Container(
                height: 20,
                width: 50,
                child: Text(color),
                color: Colors.blue,
              );
            }).toList()),
          ),
        );
      },
    );
  }
}
