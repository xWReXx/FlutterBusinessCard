import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card2/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff3F51B5),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Jesse',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pixel',
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(4.0, 4.0),
                            blurRadius: 1,
                            color: Color(0xff303F9F))
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Markgraf',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pixel',
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                          offset: Offset(4.0, 4.0),
                          blurRadius: 1,
                          color: Color(0xff303F9F))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: Divider(
                    color: Color(0xffC5CAE9),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(
                      Icons.phonelink_ring,
                      color: Color(0xffCDDC39),
                    ),
                    title: Text(
                      '682-300-1131',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail,
                      color: Color(0xffCDDC39),
                    ),
                    title: Text(
                      'JesseMarkgraf@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 20,
                  child: Divider(
                    color: Color(0xffC5CAE9),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        MyFlutterApp.linkedin,
                        color: Colors.lime,
                      ),
                      iconSize: 40,
                      onPressed: () async {
                        const url =
                            'https://www.linkedin.com/in/jesse-markgraf/';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'couldnt load';
                        }
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(
                        MyFlutterApp.github,
                        color: Colors.lime,
                      ),
                      iconSize: 40,
                      onPressed: () async {
                        const url = 'https://github.com/xWReXx';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'couldnt load';
                        }
                      },
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
