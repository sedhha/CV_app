import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(
              child: Text('B-Tech: Mechanical',
                  style: TextStyle(
                    fontFamily: 'Mono',
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            backgroundColor: Colors.black,
          ),
          body: myApp(),
        ),
      ),
    );

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int num1 = 6;
  int num2 = 4;
  void changeEvents() {
    setState(() {
      num1 = Random().nextInt(11);
      //num2 = Random().nextInt(10);
    });
  }

  void changeProjects() {
    setState(() {
      //num1 = Random().nextInt(10);
      num2 = Random().nextInt(11);
    });
  }

/////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('images/2.JPG'),
          ),
          Text('Shivam Sahil',
              style: TextStyle(
                fontFamily: 'Mono',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          Text(
            'Design Engineer',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  size: 15,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '+91 96 5555 8174',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'activity.schoolsh2@gmail.com',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'SourceSansPro'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.yellowAccent,
                      width: 165,
                      padding: EdgeInsets.all(2),
                      //margin: EdgeInsets.fromLTRB(0, 0, 180, 20),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.build,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Projects done',
                            style: TextStyle(
                                fontSize: 15, fontFamily: 'SourceSansPro'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 165,
                      color: Colors.yellowAccent,
                      padding: EdgeInsets.all(2),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.event,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Events Participated',
                            style: TextStyle(
                                fontSize: 15, fontFamily: 'SourceSansPro'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        changeEvents();
                        //print('Button to dab rha h');
                      },
                      padding: EdgeInsets.all(0),
                      child: Container(
                        color: Colors.white,
                        width: 165,
                        height: 165,
                        padding: EdgeInsets.all(2),
                        child: Image.asset('images/num$num1.JPG'),
                      ),
                    ),
                    //margin: EdgeInsets.fromLTRB(0, 0, 180, 20),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                      onPressed: () {
                        changeProjects();
                        //print('Dusra Daba');
                      },
                      padding: EdgeInsets.all(0),
                      child: Container(
                        width: 165,
                        height: 165,
                        color: Colors.white,
                        padding: EdgeInsets.all(2),
                        child: Image.asset('images/nums$num2.JPG'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
