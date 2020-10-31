import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: [
            Positioned(
              left: 100,
              bottom: 500,
              child: CircleAvatar(
                backgroundColor: Colors.blue[400],
                radius: 300,
              ),
            ),
            Positioned(
              left: 50,
              top: 100,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 75,
              ),
            ),
            Positioned(
              right: 150,
              top: 830,
              child: CircleAvatar(
                backgroundColor: Colors.blue[300],
                radius: 300,
              ),
            ),
            PositionedDirectional(
              start: 10,
              end: 10,
              top: 300,
              height: 350,
              child: Card(
                semanticContainer: true,
                elevation: 5,
                shadowColor: Colors.grey[200],
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 60,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      TextField(
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "OpenSans",
                        ),
                        decoration: InputDecoration(
                          labelText: 'Email (Required)',
                        ),
                      ),
                      TextField(
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "OpenSans",
                        ),
                        decoration: InputDecoration(
                          labelText: 'Password (Required)',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "OpenSans",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 300,
              bottom: 290,
              child: Container(
                alignment: Alignment(0, 0),
                child: CircleAvatar(
                  child: IconButton(
                    icon: FaIcon(FontAwesomeIcons.angleRight),
                    onPressed: () {},
                    iconSize: 60,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.blue[400],
                  radius: 50,
                ),
              ),
            ),
            PositionedDirectional(
              bottom: 90,
              start: 80,
              end: 80,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'or Login with',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Login with Facebook',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('images/google_g.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Sign in with Google',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 30,
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
      //primarySwatch: Colors.blue[400],
    );
  }
}
