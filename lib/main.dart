import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(Myapp());
class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to my first Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Center(
          child: RandomWords()
        ),
      )
    );
  }
}
class RandomWordState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget{
  @override
  RandomWordState createState() => new RandomWordState();
}