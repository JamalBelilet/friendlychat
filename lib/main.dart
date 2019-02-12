import 'package:flutter/material.dart';

void main() => runApp(FriendlychatApp());

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Friendlychat',
        home: ChatScreen(),
      );
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Friendlychat'),
        ),
      );
}
