import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.brown[500],
          body: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                CircleAvatar(
                  backgroundImage:AssetImage("images/IMG_5867.HEIC"),
                  radius: 50.0,
                ),
                Text(
                    'Vishv Nagde',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black87,
                    letterSpacing: 2.5,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'FLUTTER DEVLOPER',
                  style:TextStyle(
                    fontFamily: 'Inconsolata',
                    color: Colors.black87,
                    letterSpacing: 5.0,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(
                  height: 20.0,
                  width: 250.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  color:Colors.white,
                  margin: EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
                  child:Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          size: 30.0,
                          color: Colors.teal ,
                      ),
                        SizedBox(
                          width:30.0
                        ),
                        Text(
                          '+91 8308097877',
                          style: TextStyle(
                            color:Colors.teal.shade900,
                            fontFamily: 'Roboto'
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                Card(
                  color:Colors.white,
                  margin: EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
                  child:Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Row(
                      children:<Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.teal,
                          size: 30.0,
                        ),
                        SizedBox(
                            width:30.0
                        ),
                        Text(
                          'vishvnagde186@gmail.com',
                          style:TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Roboto ',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
      ),
    ),
  );
}
}