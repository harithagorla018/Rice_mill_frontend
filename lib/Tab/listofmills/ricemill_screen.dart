import 'package:flutter/material.dart';
import 'package:rice_mill_frontend/LoginScreen/Login/constants.dart';
import './searching.dart';

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
  const MyRicemillPage({Key key}):super(key: key);
  @override
  _MyRicemillPageState createState() => _MyRicemillPageState();
}

class _MyRicemillPageState extends State<MyRicemillPage> with SingleTickerProviderStateMixin {
  
  List<ListItem> listTiles=[
    ListItem("assets/ricemill.jpg",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
    ListItem("assets/ricemill2.jpg",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
    ListItem("assets/ricemill3.jpg",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
    ListItem("assets/ricemill4.jpg",
    lipsum.createWord(numWords:6),
    lipsum.createWord(numWords:2),
    "06 Apr 2021",
    ),
  ];


  // List<Tab> _tabList=[
  //   Tab(
  //     child: Text("Top")
  //   ),
  //   Tab(
  //     child: Text("Top")
  //   ),
  //     Tab(
  //     child: Text("Top")
  //   ),
    
  // ];
  // final List<String> kEnglishWords;
  // _MySearchDelegate _delegate;

  // _MyRicemillPageState():kEnglishWords=List.from(Set.from(english_words.all))
  // ..sort(
  //   (w1,w2)=>w1.toLowerCase().compareTo(w2.toLowerCase()),
  // ),
  // super();

  TabController _tabController;
  @override 
  void initState(){
    super.initState();
    // _delegate=_MySearchDelegate(kEnglishWords);
    // _tabController=TabController(vsync: this,length:_tabList.length);
  }

  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text("Ricemills",style: TextStyle(color: Black),),
        actions: <Widget>[
          IconButton(
            tooltip: 'Search',
            icon: const Icon(Icons.search,color: Colors.black), 
           onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => AppBarSearchExample()),
                  // );
                  },
             ),
        ],
        // title: Text("Ricemills", style:TextStyle(
        //      color: Colors.black,
        //      ),),
       
        //  elevation: 0,
        // brightness: Brightness.light,
        // backgroundColor: Colors.white,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_ios,
        //     size: 20,
        //     color: Colors.black,),
           
        // ),
      ),
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [

          Padding(
            padding: EdgeInsets.all(8.0),
          child: Container(
            child: ListView.builder(
              itemCount: listTiles.length,
              itemBuilder: (context,index){
                return InkWell(
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(
                  //     builder:(context)=>DetailsScreen(
                  //       item: listTiles[index],
                  //       tag: listTiles[index].newsTitle,
                  //     )
                  //   )
                  //   );
                   
                  // },
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