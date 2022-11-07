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
          title: Text('Text Field'),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController name = TextEditingController();

  String hasilInput = 'hasil';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: TextEditingController(text: "Initial name"),
                onChanged: (val) {},
                onSubmitted: (val) {
                  setState(() {
                    hasilInput = val;
                  });
                },
                onEditingComplete: () {
                  print(name.text);
                },
                obscureText: false,
                keyboardType: TextInputType.phone,
                showCursor: true,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      size: 12.0,
                    ),
                    labelText: "Nama",
                    // border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Nama kamu siapa?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              Text(hasilInput),
            ],
          ),
        ),
      ),
    );
  }
}
