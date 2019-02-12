import 'package:flutter/material.dart';

void main() => runApp(FriendlychatApp());

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Friendlychat',
        home: ChatScreen(),
      );
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreeState();
}

class ChatScreeState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Friendlychat'),
      ),
      body: Column(children: <Widget>[
        Row(
          children: <Widget>[
            _buildTextComposer(),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: null,
            )
          ],
        )
      ]));

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}
