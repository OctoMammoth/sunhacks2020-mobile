import 'dart:math';

import 'widgets/menuBox.dart';

import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  _More createState() => _More();
}

InputBorder border;

class _More extends State<More> {
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
            padding: EdgeInsets.only(left: 25, top: 60),
            child: Align(
              alignment: Alignment(-1, -1),
              child: Image.asset('images/sevices.png'),
            ),
          ),
          Container(
            height: 32,
          ),

          menuBox(image: 'images/teamates.png', title: "О нас",),
          menuBox(image: 'images/notifications.png', title: "Уведомления",),
          menuBox(image: 'images/lock.png', title: "Криптинг",),
          menuBox(image: 'images/bills.png', title: "Telegram Bot", onTap: () => {Navigator.pushNamed(context, '/telegram')},),
          menuBox(image: 'images/settings.png', title: "Найстройки",onTap: () => {Navigator.pushNamed(context, '/')}),
          menuBox(image: 'images/numbers.png', title: "Контакты",),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: 4,
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
              color: Colors.grey,
            ),
            title: Text('Бизнес',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            title: Text('Больше',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                )),
          ),
        ],
      ),
    );
  }
}
