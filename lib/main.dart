import 'package:flutter/material.dart';
import 'package:myapp/page/search.dart';

// import 'BottomNavigationBar.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(
          primaryColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Home(),
      debugShowCheckedModeBanner: false,
      /*home: Scaffold(
        appBar: AppBar(
          title: Text(
            "MyApp",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(

            // child: RaisedButton(
            //   onPressed: () {},
            //   textColor: Colors.orange,
            //   splashColor: Colors.cyan,
            //   highlightColor: Colors.white,
            //   elevation: 10.0,
            //   highlightElevation: 30.0,
            //   shape: Border.all(width: 5.0, color: Colors.black),
            //   // color: Colors.red[400],
            //   padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
            //   child: Text(
            //     "Raised Buttton",
            //     style: TextStyle(
            //       fontSize: 20.0,
            //     ),
            //   ),
            // ),

            // child: FlatButton(
            //   onPressed: () {},
            //   color: Colors.red,
            //   splashColor: Colors.cyan,
            //   padding: EdgeInsets.all(15.0),
            //   highlightColor: Colors.green,
            //   child: Text(
            //     "Visit me",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20.0,
            //     ),
            //   ),
            // ),

            // child: IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.add_a_photo,
            //   ),
            //   iconSize: 50.0,
            //   splashColor: Colors.green,
            //   tooltip: "Add a Photo",
            // ),

            // child: MaterialButton(
            //   color: Colors.red[400],
            //   splashColor: Colors.green,
            //   onPressed: () {},
            //   child: Text(
            //     "Meterial button",
            //     style: TextStyle(
            //       fontSize: 20.0,
            //       color: Colors.white,
            //     ),
            //   ),
            //   shape: Border.all(
            //     color: Colors.green,
            //     width: 4.0,
            //   ),
            // ),

            ),
      ),*/
    );
  }
}
