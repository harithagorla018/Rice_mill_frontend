import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import '';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:splash_screen/profile/onboarding/onboarding_page.dart';
import './Tab/menu.dart';
// import './Tab/donation/page/home_page.dart';
import './Tab/home.dart';
import './Tab/list.dart';
import './Tab/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      home: MyPackage(),
    );
  }
}

class MyPackage extends StatefulWidget {

  @override
  _MyPackageState createState() => _MyPackageState();
}
class _MyPackageState extends State<MyPackage> {
  int currentIndex = 0;
  int index=0;
  List<Widget> _widgetOptions = <Widget>[
    // HomePage(),
    // ListPage(),
    // DonationPage(),
    // {token ? ProfilePage() : OnBoardingPage()}
    // ProfilePage(),
    // OnBoardingPage(),
  ];
List listOfColors=[
  Container(
    color: Colors.blueAccent,
    ),
    Container(
    color: Colors.blueAccent,
    ),
    Container(
    color: Colors.blueAccent,
    ),
    Container(
    color: Colors.blueAccent,
    ),
];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav Bar',style:TextStyle(
          color: Colors.black,
          ),
          ),
          backgroundColor: Colors.white,
      ),
      
    //   body: listOfColors[currentIndex],
    //   bottomNavigationBar: BottomNavyBar(
    // backgroundColor: Colors.yellow,
    //     // animationDuration:Duration(milliseconds:1000),
    //     // curve:Curves.elasticInOut,
    //     curve: Curves.easeInOutCubic,
    //     selectedIndex:currentIndex,
    //     onItemSelected:(index){
    //       setState(() {
    //         currentIndex=index;
    //       },
    //       );
    //     },

        // items:<BottomNavyBarItem>[
        //   BottomNavyBarItem(
        //     icon:Icon(Icons.home,color: Colors.deepPurple),
        //     title:Text('Home'),
        //      activeColor: Colors.deepPurple,
        //      inactiveColor:Colors.yellow,
        //   ),
        //   BottomNavyBarItem(
        //     icon:Icon(Icons.location_city,color: Colors.deepPurple),
        //     title:Text('Ricemills'),
        //      activeColor: Colors.deepPurple,
        //      inactiveColor:Colors.yellow,
        //   ),
        //   BottomNavyBarItem(
        //     icon:Icon(Icons.category,color: Colors.deepPurple),
        //     title:Text('Menu'),
        //      activeColor: Colors.deepPurple,
        //      inactiveColor:Colors.yellow,
        //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
        //   ),
        //   BottomNavyBarItem(
        //     icon:Icon(Icons.person,color: Colors.deepPurple),
        //     title:Text('Profile'),
        //      activeColor: Colors.deepPurple,
        //      inactiveColor:Colors.yellow,
        //   ),
        // ],
      // ),
    );
  }
}
