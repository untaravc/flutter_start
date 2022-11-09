import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/page_satu.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      floatingActionButton: TextButton(
        child: Text('One'),
        onPressed: () {
          Navigator.of(context).pushNamed(PageSatu.nameRoute);
        },
      ),
    );
  }
}
