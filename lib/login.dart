import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

InputBorder border;

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
              ),
              Container(child: Center(child: Image.asset('images/logowork.png'))),
              AnimatedContainer(
                height: 100,
                duration: Duration(milliseconds: 300),
              ),
              AnimatedContainer(
                height: 300,
                width: 250,
                duration: Duration(milliseconds: 350),
                curve: Curves.easeInOut,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: border,
                          hintText: 'Auth ID'),
                    ),
                    Container(
                      height: 30,
                    ),
                    Container(
                      height: 80,
                    ),
                    FlatButton(
                        color: Color(0xFF3367EF),
                        onPressed: () {
//                          Navigator.pushReplacementNamed(context, '/homeJob');
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          alignment: Alignment.center,
                          width: 80,
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Войти',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),)
                    ),
                    FlatButton(
                        color: null,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          alignment: Alignment.center,
                          width: null,
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Войти как владелец бизнеса',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,color: Color(0xFF3367EF),),
                          ),)
                    )
                  ],
                ),
              ),
              AnimatedContainer(
                height: 0,
                duration: Duration(milliseconds: 300),
              )
            ],
          ),
//          Positioned(
//            right: 20,
//            bottom: 20,
//            child: FloatingActionButton(
//              onPressed: () => setState(() {
//                Navigator.pushReplacementNamed(context, '/');
//              }),
//            ),
//          ),
        ],)
    );
  }
}