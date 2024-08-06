import 'package:flutter/material.dart';
import 'package:tunes_player_app/screens/home_page.dart';

void main() {
  runApp(const TunesPlayerApp());
}

// ignore: must_be_immutable
class TunesPlayerApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const TunesPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
