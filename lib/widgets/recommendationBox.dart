import 'package:flutter/material.dart';

double PI = 3.14159265359;

class recBox extends StatelessWidget {
  final String title;
  final int score;

  Widget build(BuildContext context) {
    String _score;
    Color _color;

    if (this.score >= 0) {
      _score = "+ ${this.score}";
      _color = Color(0xFF00FFA3);
    } else {
      _score = "- ${this.score*-1}";
      _color = Color(0xFFFF0000);
    }

    return Container(
      height: 70,
        child: Column(children: [
          Container(height: 8),
      Align(
          alignment: Alignment(-1, 1),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text('$title',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18)),
          )),
      Container(height: 10,),
      Align(
          alignment: Alignment(-1, -1),
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text('$_score',
                style: TextStyle(
                    color: _color,
                    fontWeight: FontWeight.w700,
                    fontSize: 18)),
          )),
          Container(height: 8),
          Padding ( padding: EdgeInsets.only(left: 20, right: 20) , child: Container(height: 1, color: Color(0xFF162845))),

    ]));
  }

  recBox({
    this.title,
    this.score,
  });
}
