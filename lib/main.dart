import 'package:flutter/material.dart';
import 'dart:async';

//import 'signIn.dart';

void main()=> runApp(MaterialApp(
  theme:
      ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  
));
class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState()=>  _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
   void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=>print("Splash done"));
  }



  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration:BoxDecoration (color: Colors.teal[300]),
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:AssetImage('images/book.png') ,
                        backgroundColor: Colors.red,
                        radius: 50.0,

                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Bookerr",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                          //fontFamily: 'Pacifico',
                        ),

                    ],
                  ),

                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding:EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                        "Your Personal Book Rental App /n Powered by Bookerr",
                        style: TextStyle(color: Colors.white,
                            fontSize: 18.0,fontWeight: FontWeight.bold,
                            fontFamily: 'Source Sans Pro',
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      // onPressed: (){
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => SignIn()),
                      //   );
                      // },
                      child:Text("LogIn"),
                      highlightColor:Colors.grey[500],
                    ),
                    ),
                  ],

                ),
              )
            ],
          )

        ],
        ),

    );
  }
}





