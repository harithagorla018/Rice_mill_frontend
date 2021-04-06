import 'package:flutter/material.dart';
// import 'package:splash_screen/Tab/donation/widget/donationScreen.dart';
// import 'donation/widget/questions_widget.dart';
// import './donation/page/category_page.dart';
// import './donation/data/categories.dart';

// import '..//donationScreen.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          // return CategoryPage(category: categories.first);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //to get size
    var size = MediaQuery.of(context).size;
    //style
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),

      // return Scaffold(
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/header2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 66,
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // CircleAvatar(
                            //   backgroundImage: AssetImage('assets/images/avatar.png'),
                            // ),
                            // SizedBox(width:18,),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Haritha Gorla',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                  Text('Everest Thinkers'),
                                ])
                          ],
                        ),
                      ),
                      Expanded(
                        child: GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/ricebowl.png",
                                    fit: BoxFit.fitWidth,
                                    width: 90,
                                    height: 90,
                                    // color:Colors.yellow,
                                  ),
                                  Text('Food',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      )),
                                ],
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/grocery.png",
                                    fit: BoxFit.fitWidth,
                                    width: 80,
                                    height: 80,
                                    // color:Colors.yellow,
                                  ),
                                  Text('Groceries',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      )),
                                ],
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/clothes.png",
                                    fit: BoxFit.fitWidth,
                                    // width: 100,
                                    height: 80,
                                    // color:Colors.yellow,
                                  ),
                                  Text('Clothes',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      )),
                                ],
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/money.png",
                                    fit: BoxFit.fitWidth,
                                    // width: 100,
                                    // height: 100,
                                    // color:Colors.yellow,
                                  ),
                                  Text('Money',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      )),
                                ],
                              ),
                            ),
                          ],
                          crossAxisCount: 2,
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
    // );
  }
}
