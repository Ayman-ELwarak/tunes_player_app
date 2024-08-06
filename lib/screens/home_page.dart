import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/coloum_model.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<ColoumModel> CM = [
    ColoumModel(
      color: Color.fromARGB(255, 231, 84, 73),
      sound: 'sounds/note1.wav',
    ),
    ColoumModel(
      color: Colors.orange,
      sound: 'sounds/note2.wav',
    ),
    ColoumModel(
      color: Colors.yellow,
      sound: 'sounds/note3.wav',
    ),
    ColoumModel(
      color: Colors.green,
      sound: 'sounds/note4.wav',
    ),
    ColoumModel(
      color: Color.fromARGB(255, 2, 104, 55),
      sound: 'sounds/note5.wav',
    ),
    ColoumModel(
      color: Colors.blue,
      sound: 'sounds/note6.wav',
    ),
    ColoumModel(
      color: Colors.purple,
      sound: 'sounds/note7.wav',
    ),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 34, 32, 32),
        title: Center(
          child: Text(
            "Flutter Tune",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: getItem(),
      ),
    );
  }

  List<Expanded> getItem() {
    List<Expanded> item = [];
    for (int i = 0; i < CM.length; i++) {
      item.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              final player = AudioPlayer();
              player.play(AssetSource(CM[i].sound));
            },
            child: Container(
              width: double.infinity,
              color: CM[i].color,
            ),
          ),
        ),
      );
    }
    return item;
  }
}
