import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import './login.dart';
import '../Login/login.dart';


class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
     
      body: SingleChildScrollView(
        child: Container(
          height: 180,
          // width:100,
          //  constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                               
              image: DecorationImage(
                image: NetworkImage("assets/r1.jpg"),
              fit: BoxFit.cover,
      //         colorFilter: 
      // ColorFilter.mode(Colors.black.withOpacity(0.3), 
      // BlendMode.dstATop),
              )
              ),
          padding: EdgeInsets.symmetric(horizontal: 30),
          // height: MediaQuery.of(context).size.height - 60,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),),
                  // SizedBox(height: 20,),
                  Text("Create an account, It's free ",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.deepPurple[700]),)


                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password ", obscureText: true),
                ],
              ),
               Padding(padding:
                  EdgeInsets.symmetric(horizontal: 30),
              child:Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),

                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 45,
                  
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                  },
                  color: Color(0xff673ab7),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,

                  ),
                  ),
                ),
              ),
               ),
               Padding(padding:
                  EdgeInsets.fromLTRB(0,10,0,0),
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // 
                  Text("Already have an account?"),
                      GestureDetector(
                  child:Text(" Login", style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.deepPurple[600],

                  ),
                  
                  ),
                  onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                       ),
                  // ),
                ],
              ),
        
            ],

          ),


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
