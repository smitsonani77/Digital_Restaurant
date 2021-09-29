import 'dart:developer';
import 'package:flutter/material.dart';
// import 'package:myapp/page/data/data_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'itemData.dart';

class ItemDetailsPage extends StatelessWidget {
  final user;
  ItemDetailsPage({required this.user});

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    int _counter = 0;

    // void _increment() {
    //   setState(() => --_counter);
    // }

    // void _decrement() {
    //   setState(() => --_counter);
    // }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            '${FOOD_DATA[user]["name"]}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
          )),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Hero(
                tag: "${FOOD_DATA[user]["image"]}",
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/${FOOD_DATA[user]["image"]}"),
                  backgroundColor: Colors.grey.shade200,
                  radius: 80,
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              '${FOOD_DATA[user]["name"]}',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.left,
            ),

            SizedBox(
              height: 12.0,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.cyan),
                // color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                // height: size.,
                child: Container(
                  child: Text(
                    '${FOOD_DATA[user]["descriptions"]}',
                    // overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.2,
                        wordSpacing: 0.1),
                  ),
                ),
              ),
            ),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   // crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [

            //     // FloatingActionButton(
            //     //   mini: true,
            //     //   onPressed: null,
            //     //   child: const Icon(
            //     //     Icons.remove,
            //     //     // color: Colors.white,
            //     //     // size: 20.0,
            //     //   ),
            //     // ),
            //     // RaisedButton(
            //     //   // autofocus: true,
            //     //   color: Colors.redAccent,
            //     //   onPressed: null,
            //     //   elevation: 0.1,
            //     //   padding: EdgeInsets.all(5),
            //     //   textColor: Colors.white,
            //     //   child: Text(
            //     //     "${_counter}",
            //     //     style: TextStyle(
            //     //       fontSize: 20.0,
            //     //     ),
            //     //   ),
            //     // ),
            //     // FloatingActionButton(
            //     //   mini: true,
            //     //   onPressed: null,
            //     //   child: const Icon(
            //     //     Icons.add,
            //     //     // color: Colors.white,
            //     //     // size: 10.0,
            //     //   ),
            //     // ),
            //     // Text(
            //     //   '${user.email}',
            //     //   style: TextStyle(
            //     //     fontSize: 16.0,
            //     //     fontWeight: FontWeight.w300,
            //     //   ),
            //     //   textAlign: TextAlign.left,
            //     // ),
            //     // FlatButton(
            //     //   onPressed: () {
            //     //     customLaunch(
            //     //         'mailto:${user.email}?subject=Contact%20Information&body=Type%20your%20mail%20here');
            //     //   },
            //     //   child: Icon(
            //     //     Icons.email,
            //     //   ),
            //     // ),
            //   ],
            // ),

            SizedBox(
              height: 12.0,
            ),
            // Expanded(
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.vertical,
            //     child: Padding(
            //       padding: const EdgeInsets.only(
            //           left: 12.0, right: 12.0, bottom: 20.0),
            //       child: Text(
            //         user.profile,
            //         textAlign: TextAlign.justify,
            //         style: TextStyle(
            //           fontSize: 16.0,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
