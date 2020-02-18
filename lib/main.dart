import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({
    String not,
    String node,
    Color color,
    int soundNumber,
  }) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('$node', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('$not',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          ],
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: Text('data'),
        // ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                node: 'Do', not: 'C', color: Colors.red, soundNumber: 1),
              buildKey(
                  node: 'Re', not: 'D', color: Colors.orange, soundNumber: 2),
              buildKey(
                  node: 'Mi', not: 'E', color: Colors.yellow, soundNumber: 3),
              buildKey(
                  node: 'Ra', not: 'F', color: Colors.green, soundNumber: 4),
              buildKey(
                  node: 'So', not: 'G', color: Colors.teal, soundNumber: 5),
              buildKey(
                  node: 'La', not: 'A', color: Colors.blue, soundNumber: 6),
              buildKey(
                  node: 'Si', not: 'B', color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
