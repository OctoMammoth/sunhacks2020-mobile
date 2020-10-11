import 'package:flutter/material.dart';

double PI = 3.14159265359;

class OrderAdd extends StatelessWidget {
  final String image;
  final String title;
  Function onTap;

  Widget build(BuildContext context) {
    this.onTap ??= () => {print("nothing")};
    return GestureDetector(
      onTap: () {
        this.onTap();
      },
      child: Container(
        color: Color(0),
        height: 70,
        child: Column(
          children: [
            Container(height: 15),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(this.image)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 95.0, top: 3),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${this.title}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ]),
            Container(height: 25),
//            Padding(
//                padding: EdgeInsets.only(left: 20, right: 20),
//                child: Container(height: 1, color: Color(0xFF162845))),
          ],
        ),
      ),
    );
  }



  OrderAdd({
    this.image,
    this.title,
    this.onTap()
  });
}
