import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/page_dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Satu')),
      floatingActionButton: ElevatedButton(
        child: Text('To page dua'),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //   return PageDua();
          // }));

          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return PageDua();
          }));
        },
      ),
    );
  }
}
