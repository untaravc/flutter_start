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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool statusSwitched = false;

  @override
  Widget build(BuildContext context) {
    print('rendered');

    return Container(
        child: Center(
      child: Column(
        children: [
          Switch(
            value: statusSwitched,
            onChanged: (value) {
              setState(() {
                statusSwitched = !statusSwitched;
              });
              print(statusSwitched);
            },
          ),
          Text(statusSwitched ? 'True' : 'False')
        ],
      ),
    ));
  }
}
