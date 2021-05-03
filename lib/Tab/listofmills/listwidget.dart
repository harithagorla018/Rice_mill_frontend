import 'package:flutter/material.dart';
import '../listofmills/listitem.dart';
import 'package:fluttertoast/fluttertoast.dart';


// ignore: missing_return
Widget listwidget(ListItem item){

  // void _showToast()=>Fluttertoast.showToast(
  //   msg:'button',
  //   toastLength:Toast.LENGTH_SHORT,
  // );
  // Container(
  //   height: 100,
  // double bottom;
    return Card(

      // height:100,
      elevation: 2.0,
      margin: EdgeInsets.only(bottom:20.0),

      child: Padding(

        // padding: EdgeInsets.all(8.0),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(children: [
          Container(

            // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            width:100.0,
            height:100.0,
            decoration:BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(item.imgUrl),
                fit: BoxFit.cover,
                ),
              borderRadius: BorderRadius.circular(8.0),
               boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: const Offset(
                          3.0,
                          3.0,
                          
                        ),
                        blurRadius: 10.0,
                        // spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        // blurRadius: 5.0,
                        spreadRadius: 0.0,
                      ), 
               ],
            ),
          ),
          SizedBox(
            width:5.0
          ),
          Expanded(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Padding(padding: EdgeInsets.fromLTRB(0,0,150,0)),
                Text(
                  item.newsTitle,
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(
                  height:5.0,
                ),
                Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                children:<Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 60),),

                const SizedBox(width: 5),
                  // Icon(Icons.book_online,color: Colors.blue.shade400),
                  // Padding(padding: EdgeInsets.fromLTRB(13, 0, 0, 0)),
                   OutlinedButton(

                  // child: Padding(padding: EdgeInsets.fromLTRB(13, 0, 0, 0)),
                  child: const Text('Pre Booking'),
                  onPressed: () {/* ... */},

                ),
                const SizedBox(width: 5),
                // Icon(Icons.book_online_outlined,color: Colors.blue.shade400),
                OutlinedButton(
                  child: const Text('Enquiry'),
                  onPressed: () {/* ... */},

                ),
                 const SizedBox(width: 5),
                // Icon(Icons.book_online_outlined,color: Colors.blue.shade400),
                OutlinedButton(
                  child: const Text('Order Now'),
                  onPressed: () {/* ... */},
                ),
                  // Icon(Icons.person),
                  // // Text(
                  // //   item.author,
                  // //   style:TextStyle(fontSize: 12.0,
                  // //   ),
                  // // ),
                  // SizedBox(
                  //   width:10.0,
                  // ),
                  // Icon(Icons.date_range),
                  // // Text(item.author,
                  // // style: TextStyle(fontSize: 12.0),
                  // // )
                ],
              )
            ],
          )
          )
      ],),
      ),
  );
  // );
}
