import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rice_mill_frontend/Tab/home/home_screen.dart';
import 'package:rice_mill_frontend/Tab/locations/location.dart';
import './Tab/listofmills/ricemill_screen.dart';
// import './Tab/map/src/core/google_map.dart';
// import './Tab/map/src/mobile/google_map.state.dart';
// import './Tab/googlemaps/src/google_map.dart';

import './Tab/profile/profile_screen.dart';
// import './Tab/locations/location.dart';
// import './Tab/profile.dart';
// import 'package:flutter/src/;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedTab = _SelectedTab.home;
  // var _selectedTab = _SelectedTab.person;


  GlobalKey _bottomNavigationKey = GlobalKey();
  int _page = 0;

 List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    RicemillScreen(),
    Location(),
    // GoogleMap(),
    // GoogleMapState(),
    // _GoogleMapState(),
    // GoogleMap(),
    // MethodChannelGoogleMapsFlutter(),
    // Map(),
    MyProfilePage(),
  ];

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
  
      // Container(
      //    decoration: BoxDecoration(
      //      boxShadow: [
      //               BoxShadow(
      //                 color: Colors.greenAccent[200],
      //                 offset: const Offset(
      //                   5.0,
      //                   5.0,
      //                 ),
      //                 blurRadius: 10.0,
      //                 spreadRadius: 2.0,
      //               ), //BoxShadow
      //               BoxShadow(
      //                 color: Colors.white,
      //                 offset: const Offset(0.0, 0.0),
      //                 blurRadius: 0.0,
      //                 spreadRadius: 0.0,
      //               ), //BoxShadow
      //             ],
      //    ),
      //   color: Colors.white,
      // ),
      bottomNavigationBar: DotNavigationBar(
        
        key: _bottomNavigationKey,
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        // onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Colors.deepPurple[600],
          ),

          /// location_city
          DotNavigationBarItem(
            icon: Icon(Icons.location_city),
            selectedColor: Colors.pink[600],
          ),

          /// category
          DotNavigationBarItem(
            icon: Icon(Icons.zoom_out_map_outlined),
            selectedColor: Colors.orange[600],
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor: Colors.blue[600],
          ),
          
        ],
         onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        // letIndexChange: (index) => true,
        
      ),
     
body:_widgetOptions.elementAt(_page),
     
      

    );
  }
}

enum _SelectedTab { home,location_city ,zoom_out_map_outlined, person }
