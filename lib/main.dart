import 'package:faker/faker.dart';
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

  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ChatItem(
          imageUrl: 'https://picsum.photos/seed/picsum/200/300',
          subtitle: faker.lorem.sentence(),
          title: faker.person.name(),
        );
      },
    );
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  ChatItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text('10:23 PM'),
      onTap: () {},
    );
  }
}
