import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Point',
      theme: ThemeData(
        fontFamily: 'SF-Pro-Display',
      ),
      home: new Homepage(
        title: 'Homepage',
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomepageState createState() => new _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: new Container(
        child: new Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: new Container(
                color: Color.fromRGBO(255, 255, 255, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Point',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Display',
                          fontWeight: FontWeight.w600,
                          fontSize: 48,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(32, 32, 32, 16),
                    ),
                    Container(
                      child: Text(
                        'Verzamel Punten & Ontvang leuke prijzen!',
                        style: TextStyle(
                          fontFamily: 'SF-Pro-Display',
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(32, 0, 32, 32),
                    ),
                    Container(
                      child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(minWidth: double.infinity),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Color.fromRGBO(8, 162, 254, 1),
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Start',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Display',
                                fontWeight: FontWeight.w600,
                                fontSize: 32,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(32, 336, 32, 16),
                    ),
                    Container(
                      child: ConstrainedBox(
                        constraints:
                            const BoxConstraints(minWidth: double.infinity),
                        child: OutlineButton(
                          onPressed: () {},
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                          highlightedBorderColor: Colors.grey,
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Check je puntensaldo',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'SF-Pro-Display',
                                fontWeight: FontWeight.w600,
                                fontSize: 32,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: new Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                    colors: [
                      Color.fromRGBO(120, 192, 233, 1),
                      Color.fromRGBO(5, 161, 255, 1),
                    ],
                  ),
                ),
                child: new Container(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
