import 'package:flutter/material.dart';

import '../model/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    super.key, required this.tuneModel,
  });
  final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        tuneModel.playSound(tuneModel.audio);
      },
      child: Container(
        decoration: BoxDecoration(
          color: tuneModel.color,
        ),
      ),
    );
  }
}
