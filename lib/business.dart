import 'dart:math';
import 'package:paradox/config';
import 'package:flutter/material.dart';

import 'widgets/menuBox.dart';

class Business extends StatefulWidget {
  @override
  _Business createState() => _Business();
}

InputBorder border;

class _Business extends State<Business> {
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
    if (index == 4) Navigator.pushReplacementNamed(context, '/more');
  }

//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    Function someFunction() {};

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, top: 60),
            child: Align(
              alignment: Alignment(-1, -1),
              child: Image.asset('images/logobus.png'),
            ),
          ),
          Container(
            height: 32,
          ),
          menuBox(
            image: 'images/orders.png',
            title: "Заказы",
            onTap: () => {Navigator.pushNamed(context, '/ordersBusiness')},
          ),
          menuBox(
            image: 'images/teamates.png',
            title: "Сотрудники",
            onTap: () => {Navigator.pushNamed(context, "/team")},
          ),
          menuBox(
              image: 'images/marketing.png',
              title: "Умная булгахтерия (LITE)",
              onTap: () => {
                someFunction()
              }),
          menuBox(
            image: 'images/bills.png',
            title: "Квитанции",
          ),
          menuBox(
            image: 'images/managment.png',
            title: "Управление услугами",
          ),
          menuBox(
            image: 'images/lock.png',
            title: "Безопасность",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: 3,
        onTap: (int index) {
          setState(() {
            print(index);
            this._selectedIndex = index;
          });
          _navigateToScreens(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: Text('Дом.стр',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flash_on,
              color: Colors.grey,
            ),
            title: Text('Платежи',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            title: Text('Поиск',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_center,
              color: Colors.black,
            ),
            title: Text('Бизнес',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            title: Text('Больше',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                )),
          ),
        ],
      ),
    );
  }
}
