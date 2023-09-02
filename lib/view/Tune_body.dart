import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/tune_item.dart';
import '../model/tune_model.dart';
class TuneBody extends StatelessWidget {
  const TuneBody({Key? key}) : super(key: key);
  final List<TuneModel> tunes=const[
    TuneModel(color: Color(0xffF44336), audio: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), audio: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), audio: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), audio: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), audio: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), audio: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), audio: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Tune App"),
        centerTitle: true,

      ),
      body:  Column(
        children: tunes.map((tune) => Expanded(child: TuneItem(tuneModel: tune))).toList(),
      ),
    );
  }
}

