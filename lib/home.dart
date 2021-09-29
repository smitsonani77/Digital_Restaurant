import 'package:flutter/material.dart';

import 'package:myapp/page/chat.dart';
import 'package:myapp/page/dashboard.dart';
import 'package:myapp/page/profile.dart';
import 'package:myapp/page/setting.dart';
import 'package:myapp/page/search.dart';
import 'package:myapp/page/Exe.dart';
import 'package:myapp/page/screens/Home.dart';
import 'package:myapp/table.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screen = [MainPage(), Chat(), Profile(), Setting()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget curruentScreen = MainPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: curruentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade500,
        child: Icon(
          IconData(62283, fontFamily: 'MaterialIcons'),
          size: 35.0,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchBar()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 60.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          curruentScreen = MainPage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            // Icons.dashboard,
                            IconData(61345, fontFamily: 'MaterialIcons'),
                            size: 25,

                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text('Dashboard',
                              style: TextStyle(
                                fontSize: 16,
                                color:
                                    currentTab == 0 ? Colors.blue : Colors.grey,
                              )),
                        ],
                      ),
                    ),

                    // MaterialButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       curruentScreen = Chat();
                    //       currentTab = 1;
                    //     });
                    //   },
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Icon(
                    //         Icons.chat,
                    //         color: currentTab == 1 ? Colors.blue : Colors.grey,
                    //       ),
                    //       Text('Chat',
                    //           style: TextStyle(
                    //             color: currentTab == 1 ? Colors.blue : Colors.grey,
                    //           )),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
                // Right Tab Bar Icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          curruentScreen = Profile();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            IconData(60981, fontFamily: 'MaterialIcons'),
                            size: 30,
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text('Profile',
                              style: TextStyle(
                                fontSize: 16,
                                color:
                                    currentTab == 2 ? Colors.blue : Colors.grey,
                              )),
                        ],
                      ),
                    ),

                    // MaterialButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       curruentScreen = Setting();
                    //       currentTab = 3;
                    //     });
                    //   },
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Icon(
                    //         Icons.chat,
                    //         color: currentTab == 3 ? Colors.blue : Colors.grey,
                    //       ),
                    //       Text('Setting',
                    //           style: TextStyle(
                    //             color:
                    //                 currentTab == 3 ? Colors.blue : Colors.grey,
                    //           )),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
