import 'package:flutter/material.dart';
import 'package:zikirpagipetang/pagipage.dart';
import 'package:zikirpagipetang/petangpage.dart';

import 'pagipage.dart';
import 'petangpage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/mbg.png'),
              colorFilter: ColorFilter.mode(
                  Colors.deepOrangeAccent.withOpacity(1), BlendMode.multiply),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Card(
                      color: Colors.deepOrange,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: ListTile(
                        title: Text(
                          'Zikir Pagi Petang',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'lexenddeca',
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            letterSpacing: 4.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: Divider(
                      height: 2.0,
                      color: Colors.transparent,
                    ),
                  ),
                  Center(
                    child: Container(
                      child: RaisedButton(
                        elevation: 17,
                        color: Colors.white,
                        splashColor: Colors.deepOrange,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PagiPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Card(
                              elevation: 10,
                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),
                              ),
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Zikir Pagi',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'ubuntu2',
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Center(
                    child: Container(
                      child: RaisedButton(
                        elevation: 17,
                        color: Colors.white,
                        splashColor: Colors.deepOrange,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PetangPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Card(
                              elevation: 10,
                              color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35.0),
                              ),
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.brightness_2,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Zikir Petang',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'ubuntu2',
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3),
                            ),
                          ],
                        ),
                      ),
                    ),
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
