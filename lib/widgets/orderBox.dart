import 'package:flutter/material.dart';

double PI = 3.14159265359;

class OrderBox extends StatelessWidget {
  final IconData icon;
  final String title;
  int orders;
  String _orders;
  Function onTap;

  Widget build(BuildContext context) {
    bool el = true;
    this.onTap ??= () => {print("nothing")};
    if (this.orders == null || this.orders == 0) {
      this._orders = "";
      el = false;
    }
    else
      this._orders = this.orders.toString();
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
                    child: Icon(this.icon, color: Colors.white,)
                ),
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
              Padding(
                padding: const EdgeInsets.only(right: 35.0, bottom: 5),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(radius: 12, backgroundColor: el ? Colors.blue : Color(0) , child: Text(
                      "${this._orders}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),),
              ),
            ]),
            Container(height: 18),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(height: 1, color: Color(0xFF162845))),
          ],
        ),
      ),
    );
  }



  OrderBox({
    this.icon,
    this.title,
    this.onTap(),
    this.orders,
  });
}
