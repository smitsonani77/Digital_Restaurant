import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/page/search.dart';
import 'package:myapp/page/itemData.dart';

import 'cart/screens/home/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: SubPage(),
    );
  }
}

class SubPage extends StatelessWidget {
  List food_data = FOOD_DATA;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Table No: 1"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Bill No : xyz",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://googleflutter.com/sample_image.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            // margin: ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Bill amount',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      '1000 ₹',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 80,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                  backgroundColor: Colors.green,

                  // elevation: 0.5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 450,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: food_data.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Card(
                      margin: const EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      color: Colors.white,
                      elevation: 0.5,
                      shadowColor: Colors.grey.shade900,
                      child: ListTile(
                        // leading: Container(
                        //   padding: const EdgeInsets.all(5),
                        //   width: 100,
                        //   height: 100,
                        //   margin: EdgeInsets.all(3),
                        //   decoration: BoxDecoration(
                        //     shape: BoxShape.rectangle,
                        //     image: DecorationImage(
                        //       fit: BoxFit.cover,
                        //       image: AssetImage(
                        //         "assets/images/${food_data[index]['image']}",
                        //       ),
                        //     ),
                        //     // border:
                        //     //     Border.all(width: 1, color: Colors.black)
                        //   ),
                        // ),
                        trailing: Text(
                          "Qunatity : ${food_data[index]['Qunatity']}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        title: Text(
                          "${food_data[index]['name']}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
