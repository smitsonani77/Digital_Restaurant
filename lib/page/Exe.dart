import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/page/itemData.dart';
import 'dart:convert';

class MyClass extends StatefulWidget {
  const MyClass({Key? key}) : super(key: key);

  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Myapp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'My App',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                wordSpacing: 1),
          ),
        ),
        body: Container(
          // decoration: BoxDecoration(
          //   border: Border.all(width:10,color: Colors.grey),
          // ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              CupertinoSearchTextField(),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.blue),
                    left: BorderSide(width: 1.0, color: Colors.blue),
                    right: BorderSide(width: 1.0, color: Colors.blue),
                    bottom: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                ),
                child: Container(
                  // padding: EdgeInsets.all(10),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('page/itemData.dart');
    final data = await json.decode(response);
    setState(() {
      _items = data["FOOD_DATA"];
    });
  }

  /*Widget Food(){
   return Container(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [

         Image.asset('images/bluehill.jpg',width: 100,fit: BoxFit.cover,),
         Text('Dabeli',textAlign: TextAlign.right,
           style: TextStyle(
               fontSize: 22,
               color: Colors.black87,
               fontWeight: FontWeight.w500,
               letterSpacing: 1,
               wordSpacing: 1,
               fontFamily: 'fonts/Roboto-Black.ttf'
           ),
         ),


         Text('',style: TextStyle(
             fontSize: 16,
             color: Colors.red
         ),
         ),

       ],
     ),
   );
 }*/

}
