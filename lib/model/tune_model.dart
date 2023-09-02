import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String audio;

  const TuneModel({required this.color, required this.audio});

  void playSound(String audio) async{
    final player = AudioPlayer();
   await player.play(AssetSource(audio));
  }
}

