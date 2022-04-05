import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            getContainer(Colors.red, 1),
            getContainer(Colors.orange, 2),
            getContainer(Colors.yellow, 3),
            getContainer(Colors.green, 4),
            getContainer(Colors.blue, 5),
            getContainer(Colors.lightBlue, 6),
            getContainer(Colors.purple, 7)
          ],
        ),
      ),
    );
  }

  Expanded getContainer(Color color, int number) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
