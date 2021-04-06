import 'package:flutter/material.dart';
// import 'package:rice_mill_frontend/bottombar.dart';
import 'package:rice_mill_frontend/bottomnav.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,),


        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               
                Column(
                  children: <Widget>[
                    Text("Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    // SizedBox(height: 10),
                    Text("Login to your account",
                    style: TextStyle(
                      fontSize: 15,
                    color:Colors.deepPurple[700]),)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(label: "Password", obscureText: true)
                    ],
                  ),
                ),
                  Padding(padding:
                  EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration:
                        BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(50),
                          // border: Border(
                          //   bottom: BorderSide(color: Colors.yellowAccent),
                          //   top: BorderSide(color: Colors.yellowAccent),
                          //   left: BorderSide(color: Colors.yellowAccent),
                          //   right: BorderSide(color: Colors.yellowAccent),

                          // ),
                          // boxShadow: [
                    // BoxShadow(
                    //   color: Colors.yellowAccent[200],
                     
                    //   blurRadius: 10.0,
                    //   spreadRadius: 2.0,
                    // ), //BoxShadow
                    // BoxShadow(
                    //   color: Colors.white,
                    //   offset: const Offset(0.0, 0.0),
                    //   blurRadius: 0.0,
                    //   spreadRadius: 0.0,
                    // ), //BoxShadow
                  // ],
                        ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 45,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        color: Color(0xff673ab7),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),

                        ),
                        // body: Center(
                        //   bottomNavigationBar: Navbar(),
                        //      child: Text('Welcome'),
                        // ),
                        
                        child: Text(
                          "Login", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
 
                        ),
                        ),

                      ),
                    ),
                  ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    Text(" Sign up", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.deepPurple[600],
                    ),)

                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/rice2.jpg"),
                      fit: BoxFit.fitHeight,

                    ),

                  ),
                )

              ],
            ))
          ],
        ),
      ),
    );
  }

}


// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color:Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[400]
            ),

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400])
          )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
