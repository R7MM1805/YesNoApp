import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://geneacdn.net/bundles/geneanetgeneastar/images/celebrites/200px/tayloralisonswiftt.jpg'),
          ),
        ),
        title: const Text('Taylor Swift'),
        centerTitle: false,
      ),
    );
  }
}
