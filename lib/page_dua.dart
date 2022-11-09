import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page dua'),
      ),
      floatingActionButton: ElevatedButton(
        child: Text('To page dua'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
