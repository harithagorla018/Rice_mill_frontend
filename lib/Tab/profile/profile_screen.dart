import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:rice_mill_frontend/Tab/home.dart';


void main(){
  runApp(ProfileScreen());
}


class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // bottomNavigationBar: AppBottomNavigation(),
     home: MyProfilePage(),
     
      
    );
  }
}

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  double value=0;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration:BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  Colors.blue[400],
                  Colors.blue[800],
                ],
                begin: Alignment.bottomCenter,
                end:Alignment.topCenter,
                ),
                 ),
          ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children:[
                  DrawerHeader(
                    child:Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius:50.0,
                          backgroundImage:NetworkImage("assets/profile.jpg"),
                        ),
                        SizedBox(height:10.0),
                        Text("Haritha",
                        style: TextStyle(color: Colors.white,
                        fontSize: 20.0,
                        ),
                        ),
                        
                      ],
                    ) ,
                    ),
                    Expanded(
                          child: ListView(
                          children: [
                            ListTile(
                              onTap:(){},
                              leading:Icon(
                                Icons.home,
                              color: Colors.white,
                              ),
                              title: Text('Home',
                              style: TextStyle(color: Colors.white),
                              ),
                            ),
                            ListTile(
                              onTap:(){},
                              leading:Icon(
                                Icons.person,
                              color: Colors.white,
                              ),
                              title: Text('Profile',
                              style: TextStyle(color: Colors.white),
                              ),
                            ),
                            ListTile(
                              onTap:(){},
                              leading:Icon(
                                Icons.settings,
                              color: Colors.white,
                              ),
                              title: Text('Settings',
                              style: TextStyle(color: Colors.white),
                              ),
                            ),
                            ListTile(
                              onTap:(){},
                              leading:Icon(
                                Icons.logout,
                              color: Colors.white,
                              ),
                              title: Text('Log Out',
                              style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                          ),
                          ),
                ],
              ),
            ),
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0,end:value),
               duration: Duration(milliseconds: 500),
                builder: (_,double val,__){
                  return(
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..setEntry(0,3,200*val)
                      ..rotateY((pi/6)*val),
                    child: Scaffold(
                    //  profilepage: MyProfilePage(),
                    //  appBar: AppBar(title: Text('Everest'),
                    //  ),
                    //  body: Center(
                    //    child:Column(
                    //        mainAxisAlignment:MainAxisAlignment.center,
                    //      children:[
                    //     Text("Swipe right to open the menu"),
                    //     ElevatedButton(
                    //       onPressed:(){},
                    //       child: Text("press me"),
                    //      )
                    //      ],
                    //    )
                    //    ),
                     ),
                    )
                  );
                }
                ),
                GestureDetector(
                  onHorizontalDragUpdate: (e){
                    if(e.delta.dx>0){
                      setState(() {
                        value=1;
                      });
                    }else{
                      setState(() {
                        value=0;
                      });
                    }
                  },
                  // onTap:(){
                  //   setState((){
                  //     value==0?value=1:value=0;
                  //   });
                  // }
                )
        ],
      ) ,
    );
  }
  }