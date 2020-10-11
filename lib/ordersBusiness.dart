import 'dart:math';

import 'widgets/orderAdd.dart';
import 'widgets/orderBox.dart';

import 'package:flutter/material.dart';

class OrdersBusiness extends StatefulWidget {
  @override
  _OrdersBusiness createState() => _OrdersBusiness();
}

InputBorder border;

class _OrdersBusiness extends State<OrdersBusiness> {
  final Random r = Random();
  final List<IconData> iconData = <IconData>[
    Icons.business_center,
    Icons.school,
    Icons.notifications_none
  ];
  Icon randomIcon() => Icon(
        iconData[r.nextInt(iconData.length)],
        size: 40,
      );
  final List<Color> colorData = <Color>[Color(0xFF6B94FF), Color(0xFFFFFFFF)];
  Color randomColor() => Color(colorData[r.nextInt(colorData.length)].value);

  int _selectedIndex = 2;

  void _navigateToScreens(int index) {
    if (index == 1) Navigator.pushReplacementNamed(context, '/payments');
    if (index == 0) Navigator.pushReplacementNamed(context, '/home');
    if (index == 2) Navigator.pushReplacementNamed(context, '/search');
    if (index == 3) Navigator.pushReplacementNamed(context, '/business');
  }

//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 60),
            child: Align(
              alignment: Alignment(-1, -1),
              child: GestureDetector(
                  onTap: () { Navigator.pop(context);},
                  child: Row(children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Container(
                      width: 10,
                      color: Color(0),
                    ),
                    Image.asset('images/logobus.png')
                  ])),
            ),
          ),
          Container(
            height: 52,
          ),
          OrderAdd(
            image: 'images/+.png',
            title: "Создать запрос",
          ),
          Container(
            height: 18,
          ),
          OrderBox(
            icon: Icons.style,
            title: "Шашлык 2кг",
            orders: 8,
          ),
          OrderBox(
            icon: Icons.payment,
            title: "Курица 10кг для свадьбы",
          ),
          OrderBox(
            icon: Icons.style,
            title: 'Комплект "САМЫЙ СОК"',
            orders: 3,
          ),
          OrderBox(
            icon: Icons.markunread_mailbox,
            title: "Шашлык 1 кг, Оплачено",
          ),
          OrderBox(
            icon: Icons.payment,
            title: "Ребра свиные, нужно оплатить",
          ),
        ],
      ),
    );
  }
}
