import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/placeorder.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  // Future navigateToFAQs(context) async {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => FAQs()));
  // }
  // Future navigateToContactus(context) async {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Contactus()));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tebles'),
        shadowColor: Colors.deepPurpleAccent,
        //foregroundColor: Colors.black,
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        //backgroundColor:Colors.blueAccent,

        child: Container(
            height: 740,
            width: 480,
            margin: EdgeInsets.only(
                left: 10.0, top: 20.0, right: 10.0, bottom: 30.0),
            padding: EdgeInsets.only(
                left: 20.0, top: 30.0, right: 20.0, bottom: 20.0),
            //color: Colors.blueGrey,
            child: GridView.count(
              primary: false,
              //padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  // color: Colors.blue[50],
                  padding: const EdgeInsets.all(5),

                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],

                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 130.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "1",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SubPage()));
                      // TODO
                      // navigateToFAQs(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),

                  //color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "2",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "3",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                      // navigateToContactus(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  //color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "4",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "5",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "6",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "7",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "8",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "9",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RaisedButton(
                    textColor: Colors.black,
                    color: Colors.blue[50],
                    // child: Icon(Icons.add),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/t1.png',
                          //frameBuilder: ,
                          height: 100.0,
                          width: 101.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "10",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],

                      //('Go to SubPage'),
                    ),
                    onPressed: () {
                      // TODO
                      // navigateToSubPage(context);
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // boxShadow: [
                    // BoxShadow(color: Colors.green, spreadRadius: 3),],
                  ),
                  // color: Colors.teal[400],
                ),
              ],
            )),
      ),
    );
  }
}
