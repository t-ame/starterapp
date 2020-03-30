import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Start.NG Information',
      home: RandomWords(),
    );
  }
// #enddocregion build
}
// #enddocregion MyApp

// #docregion RWS-var
class RandomWordsState extends State<RandomWords> {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildDetails() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          while (i < 4)
            return _addDetailRow(++i);
          return null;
        });
  }

  Widget _addDetailRow(int index){
    if (index == 1) {
      return ListTile(
        title: Text(
          "Full Name: Toya Amechi",
          style: _biggerFont,
        ),
      );
    } else
    if (index == 2) {
      return ListTile(
        title: Text(
          "Slack Username: t-ame",
          style: _biggerFont,
        ),
      );
    } else
    if (index == 3) {
      return ListTile(
        title: Text(
          "Start.NG Email: toya.amechi@gmail.com",
          style: _biggerFont,
        ),
      );
    }
    else {
      return ListTile(
        title: Text(
          "Tracks: Front-End, Back-End, Mobile, Design",
          style: _biggerFont,
        ),
      );
    }
  }

  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Start.NG Information'),
      ),
      body: _buildDetails(),
    );
  }
// #enddocregion RWS-build
// #docregion RWS-var
}
// #enddocregion RWS-var

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}