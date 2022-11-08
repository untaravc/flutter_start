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
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              print('click');
              showDialog(
                  context: context,
                  builder: (contect) {
                    return AlertDialog(
                      title: Text('Confirm delete?'),
                      content: Text('Are you?'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(contect).pop('TRUE');
                            },
                            child: Text('Yes')),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(contect).pop('FALSE');
                            },
                            child: Text('No'))
                      ],
                    );
                  }).then((value) => print(value));
            },
            child: Icon(Icons.delete)),
      ),
    );
  }
}
