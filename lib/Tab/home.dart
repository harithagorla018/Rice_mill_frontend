import 'dart:ui';
import 'package:flutter/material.dart';
// import '../posts/PhotoUpload.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _title = 'Posts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.black,
          title: Text(
            _title,
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.add_circle_outline_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    // return new UploadPhotoPage();
                  },
                ));
              },
              iconSize: 35,
              color: Colors.white,
            )
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                child: new Card(
                  elevation: 10.0,
                  margin: EdgeInsets.all(15.0),
                  child: new Container(
                    padding: new EdgeInsets.all(14.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: [
                            CircleAvatar(
                              radius: 22.0,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 20.0,
                                backgroundImage:
                                    AssetImage('assets/donation.jpg'),
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text('Juhi Sravani'),
                                new Text('See my Profile'),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text('date:12-03-2021'),
                            new Text('Time: 10:10 PM'),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        new Image.asset(
                          'assets/flower.jpg',
                          fit: BoxFit.cover,
                          height: 200,
                          width: 400,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          'This is the description of above postThis is the description of above post.This is the description of above post.This is the description of above post ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  expanded(Image image) {}
}
