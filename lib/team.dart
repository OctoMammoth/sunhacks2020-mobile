import 'dart:math';

import 'widgets/menuBox.dart';

import 'package:flutter/material.dart';

class Team extends StatefulWidget {
  @override
  _Team createState() => _Team();
}

InputBorder border;

class _Team extends State<Team> {
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
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Container(
                      width: 10,
                      color: Color(0),
                    ),
                    Image.asset('images/logoteam.png')
                  ])),
            ),
          ),
          Container(
            height: 450,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              itemBuilder: (BuildContext context, int index) {
                if (index % 2 == 0) {
                  return _buildCarousel(context, index ~/ 2);
                } else {
                  return Divider();
                }
              },
            ),
          ),
          Container(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Luis Villasmil",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(height: 12),
          menuBox(image: 'images/bills.png', title: "Задачи", onTap: () => {Navigator.pushNamed(context, '/ordersBusiness')},),
          menuBox(image: 'images/orders.png', title: "Доставка"),
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////
  //                                                //
  //               NO MORE SCAFFOLD                 //
  //                                                //
  ////////////////////////////////////////////////////

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Carousel $carouselIndex'),
        SizedBox(
          // you may want to use an aspect ratio here for tablet support
          height: 400.0,
          child: PageView.builder(
            // store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(
      BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: ExactAssetImage('images/luis.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            width: 1000,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(4),
                  bottomLeft: Radius.circular(4)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Luis Villasmil",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  Text(
                    "Manager",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
