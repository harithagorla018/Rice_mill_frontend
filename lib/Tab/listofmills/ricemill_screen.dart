import 'package:flutter/material.dart';
// import 'dart:ffi';

import 'package:rice_mill_frontend/Tab/listofmills/details.dart';
import 'package:rice_mill_frontend/Tab/listofmills/listitem.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:rice_mill_frontend/Tab/listofmills/listwidget.dart';
void main(){
  runApp(RicemillScreen());
}

class RicemillScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // bottomNavigationBar: AppBottomNavigation(),
     home: MyRicemillPage(),
     
    );
  }
}

class MyRicemillPage extends StatefulWidget {
  @override
  _MyRicemillPageState createState() => _MyRicemillPageState();
}

class _MyRicemillPageState extends State<MyRicemillPage> with SingleTickerProviderStateMixin {
  
  List<ListItem> listTiles=[
    ListItem("assets/rice.png",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
    ListItem("assets/rice.png",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
    ListItem("assets/rice.png",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
    ListItem("assets/rice.png",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
  ];


  List<Tab> _tabList=[
    Tab(
      child: Text("Top")
    ),
    Tab(
      child: Text("Top")
    ),
      Tab(
      child: Text("Top")
    ),
    
  ];
  TabController _tabController;
  @override 
  void initState(){
    super.initState();
    _tabController=TabController(vsync: this,length:_tabList.length);
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110.0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            ),
         ),
         backgroundColor: Color(0xFFFAAFA),
         centerTitle: true,
         title: Text(
           "Rice Mills",
           style:TextStyle(
             color: Colors.black,
             ),
         ),
         bottom: PreferredSize(
           child:TabBar(
             indicatorColor: Colors.black,
             isScrollable: true,
             labelColor: Colors.black,
             controller: _tabController,
             tabs: _tabList,
            //  tabs:_tabList,
           ),
           ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [

          Padding(
            padding: EdgeInsets.all(8.0),
          child: Container(
            child: ListView.builder(
              itemCount: listTiles.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context)=>DetailsScreen(
                        item: listTiles[index],
                        tag: listTiles[index].newsTitle,
                      )
                    )
                    );
                   
                  },
                  child: listwidget(listTiles[index]),
                );
              },
            ),
          ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
          child: Container(),
          ),
          Padding(padding: EdgeInsets.all(8.0),
          child: Container(),
          ),
          Padding(padding: EdgeInsets.all(8.0),
          child: Container(),
          ),
          Padding(padding: EdgeInsets.all(8.0),
          child: Container(),
          ),
        ],
        ),
    );
  }
}

class MaterialPageroute {
}