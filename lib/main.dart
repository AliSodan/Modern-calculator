import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Vidaloka-Regular',
      ),
      home: YellowCalc(),
    );
  }
}

class YellowCalc extends StatefulWidget {
  YellowCalc({Key key}) : super(key: key);
  @override
  _YellowCalcState createState() => _YellowCalcState();
}

class _YellowCalcState extends State<YellowCalc> {
  String num1 = '';
  String num2 = '';
  String opr = '';
  dynamic result = 0;

  void type(val) {
    if (opr == '') {
      setState(() {
        num1 += val;
      });
    } else if (opr == '+' || opr == '-' || opr == 'x' || opr == '/') {
      setState(() {
        num2 += val;
      });
    }
  }

  void addition() {
    if (opr != '' && result != 0) {
      setState(() {
        num1 = '$result';
        num2 = '';
        result = 0;
      });
    } else if (num1 == '') {
      setState(() {
        opr = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new DrawerHeader(
                child: new CircleAvatar(
                    child: Image.asset('assets/images/ali.jpg'),
                  ),
                ),

              color: Color(0xffffc329).withOpacity(0.8),
            ),
            new Container(
              color: Color(0xffffc329).withOpacity(0.8),
              child: new Column(
                children: new List.generate(1, (int index) {
                  return new ListTile(
                    leading: new Icon(Icons.info),
                    title: Text('Flutter Developer : Ali Sodan'),
                  );
                }),
              ),
            ),
            Container(
              color: Color(0xffffc329).withOpacity(0.8),
              child: ListTile(
                leading: new Icon(Icons.info),
                title: Text('Facebook account : Ali Sodan'),
              ),
            ),
            Container(
              color: Color(0xffffc329).withOpacity(0.8),
              child: ListTile(
                leading: new Icon(Icons.info),
                title: Text('Gmail : alisodan2@gmail.com'),
              ),
            ),
            Container(
              color: Color(0xffffc329).withOpacity(0.8),
              child: ListTile(
                leading: new Icon(Icons.info),
                title: Text('Github : Ali1994 '),
              ),
            ),
            Container(
              color: Color(0xffffc329).withOpacity(0.8),
              child: ListTile(
                leading: new Icon(Icons.info),
                title: Text('WhatsApp : +963930835960'),
              ),
            ),
            Container(
              height: 420,
              color: Color(0xffffc329).withOpacity(0.8),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffffc329),
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffffc329),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                left: 300,
                child: Container(
                    color: Color(0xfffdcc49),
                    height: 500,
                    width: 500,
                    alignment: AlignmentDirectional(0.0, 0.0),
                    transform: new Matrix4.rotationZ(0.3)),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 265,
                            width: 265,
                            decoration: BoxDecoration(
                              color: Color(0xffffc329),
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(140.0)),
                            ),
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 225,
                                width: 225,
                                child: Center(
                                  child: Text(
                                    '$result',
                                    style: TextStyle(
                                        color: Color(0xfffdc42b), fontSize: 80),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xffffc329), width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(140.0)),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color(0xffecb81b),
                                        offset: new Offset(10.0, 10.0),
                                        blurRadius: 23.0,
                                        spreadRadius: 30.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0.01,
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '$num1',
                                      style: TextStyle(
                                          color: Color(0xffb09752),
                                          fontSize: 28),
                                    ),
                                    Text(
                                      '$opr',
                                      style: TextStyle(
                                          color: Color(0xffb09752),
                                          fontSize: 28),
                                    ),
                                    Text(
                                      '$num2',
                                      style: TextStyle(
                                          color: Color(0xffb09752),
                                          fontSize: 28),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xff353841),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            opr = '+';
                            addition();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                  color: Color(0xffd0bb6b), fontSize: 32),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff353841),
                            border: Border.all(
                                color: Color(0xff353841), width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            opr = '-';
                            addition();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Center(
                            child: Text(
                              '-',
                              style: TextStyle(
                                  color: Color(0xffd0bb6b), fontSize: 32),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff353841),
                            border: Border.all(
                                color: Color(0xff353841), width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                      ),
                      Material(
                        color: Color(0xffffd059),
                        child: InkWell(
                          highlightColor: Color(0xffffd059),
                          splashColor: Color(0xffffd059),
                          onTap: () {
                            setState(() {
                              opr = 'x';
                              addition();
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            child: Center(
                              child: Text(
                                'x',
                                style: TextStyle(
                                    color: Color(0xffd0bb6b), fontSize: 32),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff353841),
                              border: Border.all(
                                  color: Color(0xff353841), width: 0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            opr = '/';
                            addition();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Center(
                            child: Text(
                              '/',
                              style: TextStyle(
                                  color: Color(0xffd0bb6b), fontSize: 32),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff353841),
                            border: Border.all(
                                color: Color(0xff353841), width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            clear();
                          });
                        },
                        child: Text(
                          'C',
                          style: TextStyle(
                            color: Color(0xfffef8d7),
                            fontSize: 50,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('7');
                        },
                        child: Text(
                          '7',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('8');
                        },
                        child: Text(
                          '8',
                          style: TextStyle(
                            color: Color(0xff3a3320),
                            fontSize: 50,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('9');
                        },
                        child: Text(
                          '9',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          result = double.parse(num1) / 100;
                        },
                        child: Text(
                          '%',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('4');
                        },
                        child: Text(
                          '4',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('5');
                        },
                        child: Text(
                          '5',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('6');
                        },
                        child: Text(
                          '6',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 33,
                      ),
                      InkWell(
                        onTap: () {
                          type('1');
                        },
                        child: Text(
                          '1',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('2');
                        },
                        child: Text(
                          '2',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('3');
                        },
                        child: Text(
                          '3',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      InkWell(
                        onTap: () {
                          type('0');
                        },
                        child: Text(
                          '0',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          type('.');
                        },
                        child: Text(
                          '.',
                          style:
                              TextStyle(color: Color(0xff3a3320), fontSize: 50),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            solution();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Center(
                            child: Text(
                              '=',
                              style: TextStyle(
                                  color: Color(0xffd0bb6b), fontSize: 32),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff353841),
                            border: Border.all(
                                color: Color(0xff353841), width: 0.5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: 15,
                left: 0,
                child: Container(
                    color: Color(0xfffdcc49),
                    height: 200,
                    width: 120,
                    alignment: AlignmentDirectional(0.0, 0.0),
                    transform: new Matrix4.rotationZ(0.3)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  solution() {
    if (opr == '+') {
      return sum();
    } else if (opr == '-') {
      return minus();
    } else if (opr == 'x') {
      return mult();
    } else if (opr == '/') {
      return div();
    }
  }

  sum() {
    result = double.parse('$num1') + double.parse('$num2');
  }

  minus() {
    result = double.parse(num1) - double.parse(num2);
  }

  mult() {
    result = double.parse(num1) * double.parse(num2);
  }

  div() {
    result = double.parse(num1) / double.parse(num2);
  }

  clear() {
    if (num2 == '' && opr == '') {
      num1 = num1.substring(0, num1.length - 1);
    } else if (num2 == '' &&
        (opr == '+' || opr == '-' || opr == 'x' || opr == '/')) {
      opr = opr.substring(0, opr.length - 1);
    } else if (num1.isNotEmpty &&
        (opr == '+' || opr == '-' || opr == 'x' || opr == '/')) {
      num2 = num2.substring(0, num2.length - 1);
    }
    if (result != 0.0) {
      return result = 0.0;
    }
  }
}
