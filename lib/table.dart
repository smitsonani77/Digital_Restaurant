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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tebles'),
        shadowColor: Colors.deepPurpleAccent,
        //foregroundColor: Colors.black,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        child: _tableGridview(),

      ),
    );
  }
  Widget _tableGridview(){
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing:5
      ),
      itemCount: 10,
      itemBuilder: (BuildContext _context,int _index){
        return Container(
                    
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10.0),

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
                                (_index+1).toString() ,
                                style: TextStyle(
                                    fontSize: 15.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push( _context , MaterialPageRoute(builder: (context) => SubPage()));

                          // navigateToFAQs(context);
                        },
                      ),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(Radius.circular(8)),

                      ),


                    );

      },
        );

  }
}
