import 'dart:math';
import 'widgets/recommendationBox.dart';

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

InputBorder border;

class _Search extends State<Search> {
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
    if (index == 3) Navigator.pushReplacementNamed(context, '/business');
    if (index == 4) Navigator.pushReplacementNamed(context, '/more');
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
              child: Image.asset('images/recommendations.png'),
            ),
          ),
          Container(
            height: 32,
          ),
          Container(
              height: 30,
              width: 330,
              child: TextField(
                style: TextStyle(color: Color(0xFFCCCCD7)),
                decoration: InputDecoration(
                    border: new UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.blue)),
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFF2952BB),
                    ),
                    hintText: 'Запрос',
                    hintStyle: TextStyle(color: Colors.white10, fontWeight: FontWeight.w700),
                    helperStyle : TextStyle(color: Colors.white70),
                    fillColor: Color(0xFF172C5E)),
              )),
          Container(height: 18,),
          recBox(title: "Как правильно открывать бизнес ?", score: 746,),
          recBox(title: "Кредиты для бизнеса.", score: 342,),
          recBox(title: "Лайфхаки для бизнеса.", score: 243,),
          recBox(title: "Мир для всех!", score: 83,),
          recBox(title: "Как работать в 1C?", score: 0,),
          recBox(title: "Как следить за работниками?", score: -20,),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: 2,
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
              color: Colors.black,
            ),
            title: Text('Поиск',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
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
