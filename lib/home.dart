import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

InputBorder border;

class _Home extends State<Home> {
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

  int _selectedIndex = 0;

  void _navigateToScreens (int index){
    if (index == 1) Navigator.pushReplacementNamed(context, '/payments');
    if (index == 2) Navigator.pushReplacementNamed(context, '/search');
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
      body: Stack(
        children: [
          Positioned(
              left: 24, top: 48, child: Image.asset('images/logohome.png')),
          Positioned(
              right: 24,
              top: 48,
              child: CircleAvatar(
                backgroundColor: Color(0xFF477AFF),
                radius: 13,
                child: Text(
                  "12",
                  style: TextStyle(
                      color: Theme.of(context).backgroundColor,
                      fontWeight: FontWeight.w700),
                ),
              )),
          Container(
            child: Column(
              children: [
                Container(
                  height: 72,
                ),
                Container(
                  height: 260,
                  margin: EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: randomColor(),
                          ),
                          width: 160,
                          height: 180,
                          margin: EdgeInsets.all(20),
                          child: Stack(children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 12.0, top: 15),
                                      child: Text('Alert card    for you',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .backgroundColor,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 24))),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 12.0),
                                      child: Text('Category',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .backgroundColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18))),
                                ),
                              ],
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: randomIcon(),
                                  ),
                                ))
                          ]));
                    },
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "Для вас",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ))),
                Container(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF12233D),
                          radius: 25,
                          child: Image.asset(
                            'images/rec.png',
                            scale: 0.85,
                          ),
                        ),
                        Container(
                          height: 7,
                        ),
                        Container(
                            width: 80,
                            child: Text(
                              "Рекомендации            ",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color(0xFF12233D),
                            radius: 25,
                            child: Image.asset(
                              'images/off.png',
                              scale: 0.85,
                            )),
                        Container(
                          height: 7,
                        ),
                        Container(
                            width: 80,
                            child: Text(
                              "Предложения             ",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color(0xFF12233D),
                            radius: 25,
                            child: Image.asset(
                              'images/spe.png',
                              scale: 0.85,
                            )),
                        Container(
                          height: 7,
                        ),
                        Container(
                            width: 80,
                            child: Text(
                              "Специально для вас      ",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color(0xFF12233D),
                            radius: 25,
                            child: Image.asset(
                              'images/som.png',
                              scale: 0.85,
                            )),
                        Container(
                          height: 7,
                        ),
                        Container(
                            width: 80,
                            child: Text(
                              "Что-то                  ",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                    Container(),
                  ],
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Container(
                    height: 158,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white,Colors.white, Colors.grey[300]]),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(20),
                          topRight: const Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Column( children: [ Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20, top: 30), child: Text("Другое", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)),
                      ],
                    )],),
                  ))),
//          Positioned(
//            right: 20,
//            bottom: 20,
//            child: FloatingActionButton(
//              backgroundColor: Colors.red,
//              onPressed: () => setState(() {
//                Navigator.pushReplacementNamed(context, '/');
//              }),
//            ),
//          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: 0,
        onTap: (int index) {
          setState(() {
            print(index);
            this._selectedIndex = index;
            }
          );
          _navigateToScreens(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            title: Text('Дом.стр', style: TextStyle(fontSize: 12 ,color : Colors.black,)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on , color: Colors.grey,),
            title: Text('Платежи', style : TextStyle(fontSize: 12 ,color : Colors.grey,)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey,),
            title: Text('Поиск', style : TextStyle(fontSize: 12 ,color : Colors.grey,)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center, color: Colors.grey,),
            title: Text('Бизнес', style : TextStyle(fontSize: 12 ,color : Colors.grey,)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz, color: Colors.grey,),
            title: Text('Больше', style : TextStyle(fontSize: 12 ,color : Colors.grey,)),
          ),
        ],
      ),
    );
  }
}
